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

    if-lt p1, v0, :cond_a

    const/4 p1, -0x1

    return p1

    :cond_a
    iget-object v0, p0, Labcd/Ts;->j6:Labcd/au;

    invoke-virtual {v0, p1}, Labcd/au;->get(I)I

    move-result p1

    return p1
.end method

.method public j6(Labcd/bs;)Labcd/bs;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    :try_start_4
    iget-object v0, p0, Labcd/Ts;->j6:Labcd/au;

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v1

    invoke-virtual {v0, v1}, Labcd/au;->get(I)I

    move-result v0
    :try_end_e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_e} :catch_f

    goto :goto_11

    :catch_f
    move-exception v0

    const/4 v0, -0x1

    :goto_11
    if-ltz v0, :cond_18

    invoke-virtual {p1, v0}, Labcd/bs;->FH(I)Labcd/bs;

    move-result-object p1

    return-object p1

    :cond_18
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "no mapping specified for register"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(III)V
    .registers 7

    iget-object v0, p0, Labcd/Ts;->j6:Labcd/au;

    invoke-virtual {v0}, Labcd/au;->size()I

    move-result v0

    if-lt p1, v0, :cond_1b

    iget-object v0, p0, Labcd/Ts;->j6:Labcd/au;

    invoke-virtual {v0}, Labcd/au;->size()I

    move-result v0

    sub-int v0, p1, v0

    :goto_10
    if-ltz v0, :cond_1b

    iget-object v1, p0, Labcd/Ts;->j6:Labcd/au;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Labcd/au;->DW(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    :cond_1b
    iget-object v0, p0, Labcd/Ts;->j6:Labcd/au;

    invoke-virtual {v0, p1, p2}, Labcd/au;->FH(II)V

    iget p1, p0, Labcd/Ts;->DW:I

    add-int/2addr p2, p3

    if-ge p1, p2, :cond_27

    iput p2, p0, Labcd/Ts;->DW:I

    :cond_27
    return-void
.end method
