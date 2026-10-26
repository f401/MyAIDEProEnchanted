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
    .locals 0

    invoke-direct {p0}, Labcd/LF;-><init>()V

    return-void
.end method

.method constructor <init>(Labcd/XF;)V
    .locals 1

    invoke-direct {p0}, Labcd/LF;-><init>()V

    :goto_0
    invoke-virtual {p1}, Labcd/XF;->j6()Labcd/dG;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Labcd/QF;->j6(Labcd/dG;)V

    goto :goto_0
.end method

.method private DW(Labcd/dG;)Labcd/QF$a;
    .locals 2

    iget-object v0, p0, Labcd/QF;->Hw:Labcd/QF$a;

    if-nez v0, :cond_0

    new-instance v0, Labcd/QF$a;

    invoke-direct {v0}, Labcd/QF$a;-><init>()V

    :goto_0
    iput-object p1, v0, Labcd/QF$a;->DW:Labcd/dG;

    return-object v0

    :cond_0
    iget-object v1, v0, Labcd/QF$a;->j6:Labcd/QF$a;

    iput-object v1, p0, Labcd/QF;->Hw:Labcd/QF$a;

    goto :goto_0
.end method

.method private j6(Labcd/QF$a;)V
    .locals 1

    iget-object v0, p0, Labcd/QF;->Hw:Labcd/QF$a;

    iput-object v0, p1, Labcd/QF$a;->j6:Labcd/QF$a;

    iput-object p1, p0, Labcd/QF;->Hw:Labcd/QF$a;

    return-void
.end method


# virtual methods
.method DW()I
    .locals 1

    iget v0, p0, Labcd/LF;->DW:I

    or-int/lit8 v0, v0, 0x1

    return v0
.end method

.method DW(I)Z
    .locals 2

    iget-object v0, p0, Labcd/QF;->FH:Labcd/QF$a;

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v1, v0, Labcd/QF$a;->DW:Labcd/dG;

    iget v1, v1, Labcd/iG;->EQ:I

    and-int/2addr v1, p1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, v0, Labcd/QF$a;->j6:Labcd/QF$a;

    goto :goto_0
.end method

.method public FH()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/QF;->FH:Labcd/QF$a;

    iput-object v0, p0, Labcd/QF;->Hw:Labcd/QF$a;

    return-void
.end method

.method public Hw()Labcd/dG;
    .locals 1

    iget-object v0, p0, Labcd/QF;->FH:Labcd/QF$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Labcd/QF$a;->DW:Labcd/dG;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j6()Labcd/dG;
    .locals 2

    iget-object v0, p0, Labcd/QF;->FH:Labcd/QF$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, v0, Labcd/QF$a;->j6:Labcd/QF$a;

    iput-object v1, p0, Labcd/QF;->FH:Labcd/QF$a;

    invoke-direct {p0, v0}, Labcd/QF;->j6(Labcd/QF$a;)V

    iget-object v0, v0, Labcd/QF$a;->DW:Labcd/dG;

    goto :goto_0
.end method

.method public j6(Labcd/dG;)V
    .locals 8

    iget-object v0, p0, Labcd/QF;->FH:Labcd/QF$a;

    iget v1, p1, Labcd/dG;->Ws:I

    int-to-long v2, v1

    invoke-direct {p0, p1}, Labcd/QF;->DW(Labcd/dG;)Labcd/QF$a;

    move-result-object v4

    if-eqz v0, :cond_0

    iget-object v1, v0, Labcd/QF$a;->DW:Labcd/dG;

    iget v1, v1, Labcd/dG;->Ws:I

    int-to-long v6, v1

    cmp-long v1, v2, v6

    if-lez v1, :cond_2

    :cond_0
    iput-object v0, v4, Labcd/QF$a;->j6:Labcd/QF$a;

    iput-object v4, p0, Labcd/QF;->FH:Labcd/QF$a;

    :goto_0
    return-void

    :cond_1
    move-object v0, v1

    :cond_2
    iget-object v1, v0, Labcd/QF$a;->j6:Labcd/QF$a;

    if-eqz v1, :cond_3

    iget-object v5, v1, Labcd/QF$a;->DW:Labcd/dG;

    iget v5, v5, Labcd/dG;->Ws:I

    int-to-long v6, v5

    cmp-long v5, v6, v2

    if-gtz v5, :cond_1

    :cond_3
    iget-object v1, v0, Labcd/QF$a;->j6:Labcd/QF$a;

    iput-object v1, v4, Labcd/QF$a;->j6:Labcd/QF$a;

    iput-object v4, v0, Labcd/QF$a;->j6:Labcd/QF$a;

    goto :goto_0
.end method

.method j6(I)Z
    .locals 2

    iget-object v0, p0, Labcd/QF;->FH:Labcd/QF$a;

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    iget-object v1, v0, Labcd/QF$a;->DW:Labcd/dG;

    iget v1, v1, Labcd/iG;->EQ:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Labcd/QF$a;->j6:Labcd/QF$a;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Labcd/QF;->FH:Labcd/QF$a;

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v2, v0, Labcd/QF$a;->DW:Labcd/dG;

    invoke-static {v1, v2}, Labcd/LF;->j6(Ljava/lang/StringBuilder;Labcd/dG;)V

    iget-object v0, v0, Labcd/QF$a;->j6:Labcd/QF$a;

    goto :goto_0
.end method
