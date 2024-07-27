.class Labcd/JH;
.super Ljava/lang/Object;


# instance fields
.field DW:[B

.field FH:Labcd/EH;

.field j6:Labcd/MH;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method DW()Z
    .registers 2

    iget-object v0, p0, Labcd/JH;->j6:Labcd/MH;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method FH()I
    .registers 2

    iget-object v0, p0, Labcd/JH;->j6:Labcd/MH;

    invoke-virtual {v0}, Labcd/MH;->gW()I

    move-result v0

    return v0
.end method

.method Hw()I
    .registers 2

    iget-object v0, p0, Labcd/JH;->j6:Labcd/MH;

    invoke-virtual {v0}, Labcd/MH;->yS()I

    move-result v0

    return v0
.end method

.method j6()I
    .registers 2

    iget-object v0, p0, Labcd/JH;->j6:Labcd/MH;

    invoke-virtual {v0}, Labcd/MH;->rN()I

    move-result v0

    return v0
.end method

.method j6(Labcd/MH;)V
    .registers 3

    const/4 v0, 0x0

    iput-object p1, p0, Labcd/JH;->j6:Labcd/MH;

    iput-object v0, p0, Labcd/JH;->FH:Labcd/EH;

    iput-object v0, p0, Labcd/JH;->DW:[B

    return-void
.end method
