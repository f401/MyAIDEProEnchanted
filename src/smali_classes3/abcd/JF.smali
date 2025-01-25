.class public Labcd/JF;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/JF$a;
    }
.end annotation


# instance fields
.field final DW:I

.field FH:I

.field private final Hw:Labcd/JF$a;

.field VH:I

.field Zo:I

.field private gn:Labcd/kC;

.field final j6:Labcd/HF;

.field v5:I


# direct methods
.method constructor <init>(Labcd/HF;I)V
    .registers 4

    new-instance v0, Labcd/IF;

    invoke-direct {v0, p1}, Labcd/IF;-><init>(Labcd/HF;)V

    invoke-direct {p0, p1, p2, v0}, Labcd/JF;-><init>(Labcd/HF;ILabcd/JF$a;)V

    return-void
.end method

.method constructor <init>(Labcd/HF;ILabcd/JF$a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/JF;->j6:Labcd/HF;

    iput p2, p0, Labcd/JF;->DW:I

    iput-object p3, p0, Labcd/JF;->Hw:Labcd/JF$a;

    return-void
.end method

.method constructor <init>(Labcd/HF;Labcd/kC;)V
    .registers 4

    iget-object v0, p1, Labcd/HF;->yS:[B

    array-length v0, v0

    invoke-direct {p0, p1, v0}, Labcd/JF;-><init>(Labcd/HF;I)V

    iput-object p2, p0, Labcd/JF;->gn:Labcd/kC;

    iget p1, p0, Labcd/JF;->DW:I

    iput p1, p0, Labcd/JF;->FH:I

    const/4 p1, 0x0

    iput p1, p0, Labcd/JF;->VH:I

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    iput p1, p0, Labcd/JF;->v5:I

    goto :goto_37

    :cond_18
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/jC;

    invoke-virtual {p1}, Labcd/jC;->Hw()I

    move-result p1

    iput p1, p0, Labcd/JF;->v5:I

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/jC;

    invoke-virtual {p1}, Labcd/jC;->Zo()I

    move-result p1

    iget p2, p0, Labcd/JF;->v5:I

    sub-int/2addr p1, p2

    :goto_37
    iput p1, p0, Labcd/JF;->Zo:I

    return-void
.end method


# virtual methods
.method public DW()I
    .registers 2

    iget v0, p0, Labcd/JF;->Zo:I

    return v0
.end method

.method public FH()I
    .registers 2

    iget v0, p0, Labcd/JF;->v5:I

    return v0
.end method

.method public Hw()Labcd/JF$a;
    .registers 2

    iget-object v0, p0, Labcd/JF;->Hw:Labcd/JF$a;

    return-object v0
.end method

.method public Zo()Labcd/kC;
    .registers 9

    iget-object v0, p0, Labcd/JF;->gn:Labcd/kC;

    if-nez v0, :cond_6f

    new-instance v0, Labcd/kC;

    invoke-direct {v0}, Labcd/kC;-><init>()V

    iput-object v0, p0, Labcd/JF;->gn:Labcd/kC;

    iget-object v0, p0, Labcd/JF;->j6:Labcd/HF;

    iget-object v0, v0, Labcd/HF;->yS:[B

    iget v1, p0, Labcd/JF;->DW:I

    invoke-static {v0, v1}, Labcd/IK;->Zo([BI)I

    move-result v1

    iget-object v2, p0, Labcd/JF;->Hw:Labcd/JF$a;

    iget v2, v2, Labcd/JF$a;->j6:I

    iget v3, p0, Labcd/JF;->v5:I

    const/4 v4, 0x0

    move-object v5, v4

    :goto_1d
    iget v6, p0, Labcd/JF;->FH:I

    if-lt v1, v6, :cond_22

    goto :goto_6f

    :cond_22
    aget-byte v6, v0, v1

    const/16 v7, 0xa

    if-eq v6, v7, :cond_65

    const/16 v7, 0x20

    if-eq v6, v7, :cond_65

    const/16 v7, 0x2b

    if-eq v6, v7, :cond_4f

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_39

    const/16 v7, 0x5c

    if-eq v6, v7, :cond_6a

    goto :goto_6f

    :cond_39
    if-nez v5, :cond_49

    new-instance v5, Labcd/jC;

    add-int/lit8 v6, v2, -0x1

    add-int/lit8 v7, v3, -0x1

    invoke-direct {v5, v6, v7}, Labcd/jC;-><init>(II)V

    iget-object v6, p0, Labcd/JF;->gn:Labcd/kC;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_49
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v5}, Labcd/jC;->j6()V

    goto :goto_6a

    :cond_4f
    if-nez v5, :cond_5f

    new-instance v5, Labcd/jC;

    add-int/lit8 v6, v2, -0x1

    add-int/lit8 v7, v3, -0x1

    invoke-direct {v5, v6, v7}, Labcd/jC;-><init>(II)V

    iget-object v6, p0, Labcd/JF;->gn:Labcd/kC;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5f
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5}, Labcd/jC;->DW()V

    goto :goto_6a

    :cond_65
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v5, v4

    :cond_6a
    :goto_6a
    invoke-static {v0, v1}, Labcd/IK;->Zo([BI)I

    move-result v1

    goto :goto_1d

    :cond_6f
    :goto_6f
    iget-object v0, p0, Labcd/JF;->gn:Labcd/kC;

    return-object v0
.end method

.method public j6()Labcd/HF;
    .registers 2

    iget-object v0, p0, Labcd/JF;->j6:Labcd/HF;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HunkHeader["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/JF;->Hw()Labcd/JF$a;

    move-result-object v1

    invoke-virtual {v1}, Labcd/JF$a;->DW()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/JF;->Hw()Labcd/JF$a;

    move-result-object v2

    invoke-virtual {v2}, Labcd/JF$a;->j6()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/JF;->FH()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/JF;->DW()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v5()I
    .registers 2

    iget v0, p0, Labcd/JF;->DW:I

    return v0
.end method
