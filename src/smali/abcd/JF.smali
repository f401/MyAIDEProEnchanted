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
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p1, Labcd/HF;->yS:[B

    array-length v0, v0

    invoke-direct {p0, p1, v0}, Labcd/JF;-><init>(Labcd/HF;I)V

    iput-object p2, p0, Labcd/JF;->gn:Labcd/kC;

    iget v0, p0, Labcd/JF;->DW:I

    iput v0, p0, Labcd/JF;->FH:I

    iput v1, p0, Labcd/JF;->VH:I

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Labcd/JF;->v5:I

    iput v1, p0, Labcd/JF;->Zo:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/jC;

    invoke-virtual {v0}, Labcd/jC;->Hw()I

    move-result v0

    iput v0, p0, Labcd/JF;->v5:I

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/jC;

    invoke-virtual {v0}, Labcd/jC;->Zo()I

    move-result v0

    iget v1, p0, Labcd/JF;->v5:I

    sub-int/2addr v0, v1

    iput v0, p0, Labcd/JF;->Zo:I

    goto :goto_0
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

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/JF;->gn:Labcd/kC;

    if-nez v0, :cond_0

    new-instance v0, Labcd/kC;

    invoke-direct {v0}, Labcd/kC;-><init>()V

    iput-object v0, p0, Labcd/JF;->gn:Labcd/kC;

    iget-object v0, p0, Labcd/JF;->j6:Labcd/HF;

    iget-object v5, v0, Labcd/HF;->yS:[B

    iget v0, p0, Labcd/JF;->DW:I

    invoke-static {v5, v0}, Labcd/IK;->Zo([BI)I

    move-result v4

    iget-object v0, p0, Labcd/JF;->Hw:Labcd/JF$a;

    iget v3, v0, Labcd/JF$a;->j6:I

    iget v2, p0, Labcd/JF;->v5:I

    move-object v0, v1

    :goto_0
    iget v6, p0, Labcd/JF;->FH:I

    if-lt v4, v6, :cond_1

    :cond_0
    iget-object v0, p0, Labcd/JF;->gn:Labcd/kC;

    return-object v0

    :cond_1
    aget-byte v6, v5, v4

    const/16 v7, 0xa

    if-eq v6, v7, :cond_6

    const/16 v7, 0x20

    if-eq v6, v7, :cond_6

    const/16 v7, 0x2b

    if-eq v6, v7, :cond_4

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_2

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_0

    :goto_1
    invoke-static {v5, v4}, Labcd/IK;->Zo([BI)I

    move-result v4

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Labcd/jC;

    add-int/lit8 v6, v3, -0x1

    add-int/lit8 v7, v2, -0x1

    invoke-direct {v0, v6, v7}, Labcd/jC;-><init>(II)V

    iget-object v6, p0, Labcd/JF;->gn:Labcd/kC;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Labcd/jC;->j6()V

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    new-instance v0, Labcd/jC;

    add-int/lit8 v6, v3, -0x1

    add-int/lit8 v7, v2, -0x1

    invoke-direct {v0, v6, v7}, Labcd/jC;-><init>(II)V

    iget-object v6, p0, Labcd/JF;->gn:Labcd/kC;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Labcd/jC;->DW()V

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v0, v1

    goto :goto_1
.end method

.method public j6()Labcd/HF;
    .registers 2

    iget-object v0, p0, Labcd/JF;->j6:Labcd/HF;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/16 v2, 0x2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HunkHeader["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/JF;->Hw()Labcd/JF$a;

    move-result-object v1

    invoke-virtual {v1}, Labcd/JF$a;->DW()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/JF;->Hw()Labcd/JF$a;

    move-result-object v1

    invoke-virtual {v1}, Labcd/JF$a;->j6()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/JF;->FH()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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
