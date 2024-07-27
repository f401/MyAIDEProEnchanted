.class public final Labcd/lq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
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
    .registers 3

    check-cast p1, Labcd/lq;

    invoke-virtual {p0, p1}, Labcd/lq;->j6(Labcd/lq;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const-class v2, Labcd/lq;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Labcd/lq;

    iget v2, p0, Labcd/lq;->DW:I

    iget v3, p1, Labcd/lq;->DW:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Labcd/lq;->Hw:I

    iget v3, p1, Labcd/lq;->Hw:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget v2, p0, Labcd/lq;->FH:I

    iget v3, p1, Labcd/lq;->FH:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
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

    if-eq v0, v1, :cond_0

    invoke-static {v0, v1}, Labcd/nu;->j6(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Labcd/lq;->Hw:I

    iget v1, p1, Labcd/lq;->Hw:I

    if-eq v0, v1, :cond_1

    invoke-static {v0, v1}, Labcd/nu;->j6(II)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Labcd/lq;->FH:I

    iget v1, p1, Labcd/lq;->FH:I

    invoke-static {v0, v1}, Labcd/nu;->j6(II)I

    move-result v0

    goto :goto_0
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

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Labcd/lq;->DW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Labcd/lq;->FH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Labcd/lq;->Hw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Labcd/lq;->j6:Labcd/iq;

    invoke-virtual {v0}, Labcd/iq;->Hw()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Labcd/lq;->FH:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/lq;->j6:Labcd/iq;

    invoke-virtual {v0}, Labcd/iq;->FH()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Labcd/lq;->Hw:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
