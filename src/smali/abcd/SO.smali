.class public Labcd/SO;
.super Labcd/PO;


# instance fields
.field private DW:Labcd/TO;


# direct methods
.method protected constructor <init>(ZLabcd/TO;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/PO;-><init>(Z)V

    iput-object p2, p0, Labcd/SO;->DW:Labcd/TO;

    return-void
.end method


# virtual methods
.method public DW()Labcd/TO;
    .registers 2

    iget-object v0, p0, Labcd/SO;->DW:Labcd/TO;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    instance-of v1, p1, Labcd/SO;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Labcd/SO;

    iget-object v1, p0, Labcd/SO;->DW:Labcd/TO;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Labcd/SO;->DW()Labcd/TO;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Labcd/SO;->DW()Labcd/TO;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/TO;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Labcd/PO;->j6()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Labcd/SO;->DW:Labcd/TO;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Labcd/TO;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
