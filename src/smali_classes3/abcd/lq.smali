.class public final Labcd/lq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Labcd/lq;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:I

.field private final FH:I

.field private final Hw:I

.field private final j6:Labcd/iq;


# direct methods
.method public constructor <init>(Labcd/iq;III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/lq;->j6:Labcd/iq;

    iput p2, p0, Labcd/lq;->DW:I

    iput p3, p0, Labcd/lq;->FH:I

    iput p4, p0, Labcd/lq;->Hw:I

    return-void
.end method


# virtual methods
.method public Hw()I
    .registers 2

    iget v0, p0, Labcd/lq;->DW:I

    return v0
.end method

.method public VH()I
    .registers 2

    iget v0, p0, Labcd/lq;->FH:I

    return v0
.end method

.method public Zo()I
    .registers 2

    iget v0, p0, Labcd/lq;->Hw:I

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Labcd/lq;

    invoke-virtual {p0, p1}, Labcd/lq;->j6(Labcd/lq;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    :cond_8
    const-class v2, Labcd/lq;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_11

    return v1

    :cond_11
    check-cast p1, Labcd/lq;

    iget v2, p0, Labcd/lq;->DW:I

    iget v3, p1, Labcd/lq;->DW:I

    if-eq v2, v3, :cond_1a

    return v1

    :cond_1a
    iget v2, p0, Labcd/lq;->Hw:I

    iget v3, p1, Labcd/lq;->Hw:I

    if-eq v2, v3, :cond_21

    return v1

    :cond_21
    iget v2, p0, Labcd/lq;->FH:I

    iget p1, p1, Labcd/lq;->FH:I

    if-eq v2, p1, :cond_28

    return v1

    :cond_28
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Labcd/lq;->DW:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Labcd/lq;->Hw:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Labcd/lq;->FH:I

    add-int/2addr v0, v1

    return v0
.end method

.method public j6(Labcd/lq;)I
    .registers 4

    iget v0, p0, Labcd/lq;->DW:I

    iget v1, p1, Labcd/lq;->DW:I

    if-eq v0, v1, :cond_b

    invoke-static {v0, v1}, Labcd/nu;->j6(II)I

    move-result p1

    return p1

    :cond_b
    iget v0, p0, Labcd/lq;->Hw:I

    iget v1, p1, Labcd/lq;->Hw:I

    if-eq v0, v1, :cond_16

    invoke-static {v0, v1}, Labcd/nu;->j6(II)I

    move-result p1

    return p1

    :cond_16
    iget v0, p0, Labcd/lq;->FH:I

    iget p1, p1, Labcd/lq;->FH:I

    invoke-static {v0, p1}, Labcd/nu;->j6(II)I

    move-result p1

    return p1
.end method

.method public j6(Labcd/hr$a;)V
    .registers 3

    iget v0, p0, Labcd/lq;->DW:I

    invoke-virtual {p1, v0}, Labcd/hr$a;->u7(I)V

    iget v0, p0, Labcd/lq;->FH:I

    invoke-virtual {p1, v0}, Labcd/hr$a;->u7(I)V

    iget v0, p0, Labcd/lq;->Hw:I

    invoke-virtual {p1, v0}, Labcd/hr$a;->writeInt(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Labcd/lq;->j6:Labcd/iq;

    if-nez v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Labcd/lq;->DW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Labcd/lq;->FH:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Labcd/lq;->Hw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Labcd/lq;->j6:Labcd/iq;

    invoke-virtual {v1}, Labcd/iq;->Hw()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Labcd/lq;->FH:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/lq;->j6:Labcd/iq;

    invoke-virtual {v1}, Labcd/iq;->FH()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Labcd/lq;->Hw:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20
.end method
