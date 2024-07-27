.class public final Labcd/aq;
.super Ljava/lang/Object;


# instance fields
.field private final DW:I

.field private final FH:I

.field private final Hw:I

.field private final VH:I

.field private final Zo:I

.field private final gn:I

.field private final j6:Labcd/iq;

.field private final tp:I

.field private final u7:I

.field private final v5:I


# direct methods
.method public constructor <init>(Labcd/iq;IIIIIIIII)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/aq;->j6:Labcd/iq;

    iput p2, p0, Labcd/aq;->DW:I

    iput p3, p0, Labcd/aq;->FH:I

    iput p4, p0, Labcd/aq;->Hw:I

    iput p5, p0, Labcd/aq;->v5:I

    iput p6, p0, Labcd/aq;->Zo:I

    iput p7, p0, Labcd/aq;->VH:I

    iput p8, p0, Labcd/aq;->gn:I

    iput p9, p0, Labcd/aq;->u7:I

    iput p10, p0, Labcd/aq;->tp:I

    return-void
.end method


# virtual methods
.method public DW()I
    .registers 2

    iget v0, p0, Labcd/aq;->gn:I

    return v0
.end method

.method public FH()I
    .registers 2

    iget v0, p0, Labcd/aq;->u7:I

    return v0
.end method

.method public Hw()I
    .registers 2

    iget v0, p0, Labcd/aq;->Zo:I

    return v0
.end method

.method public VH()I
    .registers 2

    iget v0, p0, Labcd/aq;->tp:I

    return v0
.end method

.method public Zo()I
    .registers 2

    iget v0, p0, Labcd/aq;->VH:I

    return v0
.end method

.method public gn()I
    .registers 2

    iget v0, p0, Labcd/aq;->v5:I

    return v0
.end method

.method public j6()I
    .registers 2

    iget v0, p0, Labcd/aq;->Hw:I

    return v0
.end method

.method public j6(Labcd/hr$a;)V
    .registers 3

    invoke-virtual {p1}, Labcd/hr$a;->VH()V

    invoke-virtual {p0}, Labcd/aq;->u7()I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/hr$a;->writeInt(I)V

    invoke-virtual {p0}, Labcd/aq;->j6()I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/hr$a;->writeInt(I)V

    invoke-virtual {p0}, Labcd/aq;->gn()I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/hr$a;->writeInt(I)V

    invoke-virtual {p0}, Labcd/aq;->Hw()I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/hr$a;->writeInt(I)V

    invoke-virtual {p0}, Labcd/aq;->Zo()I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/hr$a;->writeInt(I)V

    invoke-virtual {p0}, Labcd/aq;->DW()I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/hr$a;->writeInt(I)V

    invoke-virtual {p0}, Labcd/aq;->FH()I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/hr$a;->writeInt(I)V

    invoke-virtual {p0}, Labcd/aq;->VH()I

    move-result v0

    invoke-virtual {p1, v0}, Labcd/hr$a;->writeInt(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Labcd/aq;->j6:Labcd/iq;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Labcd/aq;->FH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Labcd/aq;->v5:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Labcd/aq;->j6:Labcd/iq;

    invoke-virtual {v0}, Labcd/iq;->Hw()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Labcd/aq;->FH:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Labcd/aq;->v5:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const-string v0, " extends "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/aq;->j6:Labcd/iq;

    invoke-virtual {v0}, Labcd/iq;->Hw()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Labcd/aq;->v5:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public u7()I
    .registers 2

    iget v0, p0, Labcd/aq;->FH:I

    return v0
.end method

.method public v5()I
    .registers 2

    iget v0, p0, Labcd/aq;->DW:I

    return v0
.end method
