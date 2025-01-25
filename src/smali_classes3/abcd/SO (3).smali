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

    instance-of v0, p1, Labcd/SO;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Labcd/SO;

    iget-object v0, p0, Labcd/SO;->DW:Labcd/TO;

    invoke-virtual {p1}, Labcd/SO;->DW()Labcd/TO;

    move-result-object p1

    if-nez v0, :cond_15

    if-nez p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    return v1

    :cond_15
    invoke-virtual {v0, p1}, Labcd/TO;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Labcd/PO;->j6()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Labcd/SO;->DW:Labcd/TO;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Labcd/TO;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_f
    return v0
.end method
