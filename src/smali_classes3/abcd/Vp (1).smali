.class public final Labcd/Vp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Labcd/Vp;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:B

.field private final FH:I

.field private final Hw:[I

.field private final j6:Labcd/iq;

.field private final v5:[Labcd/jq;


# direct methods
.method public constructor <init>(Labcd/iq;BI[I[Labcd/jq;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Vp;->j6:Labcd/iq;

    iput-byte p2, p0, Labcd/Vp;->DW:B

    iput p3, p0, Labcd/Vp;->FH:I

    iput-object p4, p0, Labcd/Vp;->Hw:[I

    iput-object p5, p0, Labcd/Vp;->v5:[Labcd/jq;

    return-void
.end method


# virtual methods
.method public Hw()[I
    .registers 2

    iget-object v0, p0, Labcd/Vp;->Hw:[I

    return-object v0
.end method

.method public VH()[Labcd/jq;
    .registers 2

    iget-object v0, p0, Labcd/Vp;->v5:[Labcd/jq;

    return-object v0
.end method

.method public Zo()I
    .registers 2

    iget v0, p0, Labcd/Vp;->FH:I

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Labcd/Vp;

    invoke-virtual {p0, p1}, Labcd/Vp;->j6(Labcd/Vp;)I

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
    const-class v2, Labcd/Vp;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_11

    return v1

    :cond_11
    check-cast p1, Labcd/Vp;

    iget-object v2, p0, Labcd/Vp;->Hw:[I

    iget-object v3, p1, Labcd/Vp;->Hw:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    :cond_1e
    iget v2, p0, Labcd/Vp;->FH:I

    iget v3, p1, Labcd/Vp;->FH:I

    if-eq v2, v3, :cond_25

    return v1

    :cond_25
    iget-object v2, p0, Labcd/Vp;->v5:[Labcd/jq;

    iget-object v3, p1, Labcd/Vp;->v5:[Labcd/jq;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    return v1

    :cond_30
    iget-byte v2, p0, Labcd/Vp;->DW:B

    iget-byte p1, p1, Labcd/Vp;->DW:B

    if-eq v2, p1, :cond_37

    return v1

    :cond_37
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Labcd/Vp;->Hw:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Labcd/Vp;->FH:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Labcd/Vp;->v5:[Labcd/jq;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-byte v1, p0, Labcd/Vp;->DW:B

    add-int/2addr v0, v1

    return v0
.end method

.method public j6(Labcd/Vp;)I
    .registers 6

    iget v0, p0, Labcd/Vp;->FH:I

    iget v1, p1, Labcd/Vp;->FH:I

    if-eq v0, v1, :cond_b

    invoke-static {v0, v1}, Labcd/nu;->j6(II)I

    move-result p1

    return p1

    :cond_b
    iget-object v0, p0, Labcd/Vp;->Hw:[I

    array-length v0, v0

    iget-object v1, p1, Labcd/Vp;->Hw:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_39

    iget-object v2, p0, Labcd/Vp;->Hw:[I

    aget v2, v2, v1

    iget-object v3, p1, Labcd/Vp;->Hw:[I

    aget v3, v3, v1

    if-eq v2, v3, :cond_27

    invoke-static {v2, v3}, Labcd/nu;->j6(II)I

    move-result p1

    return p1

    :cond_27
    iget-object v2, p0, Labcd/Vp;->v5:[Labcd/jq;

    aget-object v2, v2, v1

    iget-object v3, p1, Labcd/Vp;->v5:[Labcd/jq;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Labcd/jq;->j6(Labcd/jq;)I

    move-result v2

    if-eqz v2, :cond_36

    return v2

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_39
    iget-object v0, p0, Labcd/Vp;->Hw:[I

    array-length v0, v0

    iget-object p1, p1, Labcd/Vp;->Hw:[I

    array-length p1, p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public j6(Labcd/hr$a;)V
    .registers 5

    iget-byte v0, p0, Labcd/Vp;->DW:B

    invoke-virtual {p1, v0}, Labcd/hr$a;->writeByte(I)V

    iget v0, p0, Labcd/Vp;->FH:I

    invoke-virtual {p1, v0}, Labcd/hr$a;->DW(I)V

    iget-object v0, p0, Labcd/Vp;->Hw:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Labcd/hr$a;->DW(I)V

    const/4 v0, 0x0

    :goto_11
    iget-object v1, p0, Labcd/Vp;->Hw:[I

    array-length v2, v1

    if-ge v0, v2, :cond_25

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Labcd/hr$a;->DW(I)V

    iget-object v1, p0, Labcd/Vp;->v5:[Labcd/jq;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Labcd/jq;->j6(Labcd/hr$a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_25
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Labcd/Vp;->j6:Labcd/iq;

    const-string v1, " "

    if-nez v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v2, p0, Labcd/Vp;->DW:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Labcd/Vp;->FH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v2, p0, Labcd/Vp;->DW:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Vp;->j6:Labcd/iq;

    invoke-virtual {v1}, Labcd/iq;->Hw()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Labcd/Vp;->FH:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_41
    iget-object v2, p0, Labcd/Vp;->Hw:[I

    array-length v2, v2

    if-ge v1, v2, :cond_6f

    if-lez v1, :cond_4d

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4d
    iget-object v2, p0, Labcd/Vp;->j6:Labcd/iq;

    invoke-virtual {v2}, Labcd/iq;->FH()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Labcd/Vp;->Hw:[I

    aget v3, v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/Vp;->v5:[Labcd/jq;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    :cond_6f
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18
.end method

.method public we()B
    .registers 2

    iget-byte v0, p0, Labcd/Vp;->DW:B

    return v0
.end method
