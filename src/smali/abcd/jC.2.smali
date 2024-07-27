.class public Labcd/jC;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/jC$a;
    }
.end annotation


# instance fields
.field DW:I

.field FH:I

.field Hw:I

.field j6:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p1, p2, p2}, Labcd/jC;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Labcd/jC;->j6:I

    iput p2, p0, Labcd/jC;->DW:I

    iput p3, p0, Labcd/jC;->FH:I

    iput p4, p0, Labcd/jC;->Hw:I

    return-void
.end method


# virtual methods
.method public final DW(Labcd/jC;)Labcd/jC;
    .registers 7

    new-instance v0, Labcd/jC;

    iget v1, p0, Labcd/jC;->j6:I

    iget v2, p1, Labcd/jC;->j6:I

    iget v3, p0, Labcd/jC;->FH:I

    iget v4, p1, Labcd/jC;->FH:I

    invoke-direct {v0, v1, v2, v3, v4}, Labcd/jC;-><init>(IIII)V

    return-object v0
.end method

.method public DW()V
    .registers 2

    iget v0, p0, Labcd/jC;->Hw:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/jC;->Hw:I

    return-void
.end method

.method public final FH()I
    .registers 2

    iget v0, p0, Labcd/jC;->j6:I

    return v0
.end method

.method public final Hw()I
    .registers 2

    iget v0, p0, Labcd/jC;->FH:I

    return v0
.end method

.method public final VH()I
    .registers 3

    iget v0, p0, Labcd/jC;->DW:I

    iget v1, p0, Labcd/jC;->j6:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final Zo()I
    .registers 2

    iget v0, p0, Labcd/jC;->Hw:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Labcd/jC;

    if-eqz v0, :cond_0

    check-cast p1, Labcd/jC;

    iget v0, p0, Labcd/jC;->j6:I

    iget v1, p1, Labcd/jC;->j6:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Labcd/jC;->DW:I

    iget v1, p1, Labcd/jC;->DW:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Labcd/jC;->FH:I

    iget v1, p1, Labcd/jC;->FH:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Labcd/jC;->Hw:I

    iget v1, p1, Labcd/jC;->Hw:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final gn()Labcd/jC$a;
    .registers 3

    iget v0, p0, Labcd/jC;->j6:I

    iget v1, p0, Labcd/jC;->DW:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Labcd/jC;->FH:I

    iget v1, p0, Labcd/jC;->Hw:I

    if-ge v0, v1, :cond_0

    sget-object v0, Labcd/jC$a;->FH:Labcd/jC$a;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Labcd/jC$a;->DW:Labcd/jC$a;

    goto :goto_0

    :cond_1
    iget v0, p0, Labcd/jC;->FH:I

    iget v1, p0, Labcd/jC;->Hw:I

    if-ge v0, v1, :cond_2

    sget-object v0, Labcd/jC$a;->j6:Labcd/jC$a;

    goto :goto_0

    :cond_2
    sget-object v0, Labcd/jC$a;->Hw:Labcd/jC$a;

    goto :goto_0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Labcd/jC;->j6:I

    iget v1, p0, Labcd/jC;->DW:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final j6(Labcd/jC;)Labcd/jC;
    .registers 7

    new-instance v0, Labcd/jC;

    iget v1, p1, Labcd/jC;->DW:I

    iget v2, p0, Labcd/jC;->DW:I

    iget v3, p1, Labcd/jC;->Hw:I

    iget v4, p0, Labcd/jC;->Hw:I

    invoke-direct {v0, v1, v2, v3, v4}, Labcd/jC;-><init>(IIII)V

    return-object v0
.end method

.method public j6()V
    .registers 2

    iget v0, p0, Labcd/jC;->DW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/jC;->DW:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Labcd/jC;->gn()Labcd/jC$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Labcd/jC;->j6:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Labcd/jC;->DW:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Labcd/jC;->FH:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Labcd/jC;->Hw:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u7()Z
    .registers 3

    iget v0, p0, Labcd/jC;->j6:I

    iget v1, p0, Labcd/jC;->DW:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Labcd/jC;->FH:I

    iget v1, p0, Labcd/jC;->Hw:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final v5()I
    .registers 2

    iget v0, p0, Labcd/jC;->DW:I

    return v0
.end method
