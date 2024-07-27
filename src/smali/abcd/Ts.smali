.class public Labcd/Ts;
.super Labcd/qt;


# instance fields
.field private DW:I

.field private j6:Labcd/au;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Labcd/qt;-><init>()V

    new-instance v0, Labcd/au;

    invoke-direct {v0, p1}, Labcd/au;-><init>(I)V

    iput-object v0, p0, Labcd/Ts;->j6:Labcd/au;

    return-void
.end method


# virtual methods
.method public j6()I
    .registers 2

    iget v0, p0, Labcd/Ts;->DW:I

    return v0
.end method

.method public j6(I)I
    .registers 3

    iget-object v0, p0, Labcd/Ts;->j6:Labcd/au;

    invoke-virtual {v0}, Labcd/au;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Labcd/Ts;->j6:Labcd/au;

    invoke-virtual {v0, p1}, Labcd/au;->get(I)I

    move-result v0

    goto :goto_0
.end method

.method public j6(Labcd/bs;)Labcd/bs;
    .registers 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Labcd/Ts;->j6:Labcd/au;

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v1

    invoke-virtual {v0, v1}, Labcd/au;->get(I)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Labcd/bs;->FH(I)Labcd/bs;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "no mapping specified for register"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(III)V
    .registers 7

    iget-object v0, p0, Labcd/Ts;->j6:Labcd/au;

    invoke-virtual {v0}, Labcd/au;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Labcd/Ts;->j6:Labcd/au;

    invoke-virtual {v0}, Labcd/au;->size()I

    move-result v0

    sub-int v0, p1, v0

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Labcd/Ts;->j6:Labcd/au;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Labcd/au;->DW(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Labcd/Ts;->j6:Labcd/au;

    invoke-virtual {v0, p1, p2}, Labcd/au;->FH(II)V

    iget v0, p0, Labcd/Ts;->DW:I

    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    iput v1, p0, Labcd/Ts;->DW:I

    :cond_1
    return-void
.end method
