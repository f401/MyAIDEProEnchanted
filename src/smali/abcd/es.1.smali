.class public final Labcd/es;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Labcd/Qs;

.field private final FH:Labcd/Ss;

.field private final Hw:Labcd/Ss;

.field private final VH:Ljava/lang/String;

.field private final Zo:Z

.field private final j6:I

.field private final v5:I


# direct methods
.method public constructor <init>(ILabcd/Qs;Labcd/Ss;ILjava/lang/String;)V
    .registers 14

    sget-object v4, Labcd/Ps;->FH:Labcd/Ps;

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Labcd/es;-><init>(ILabcd/Qs;Labcd/Ss;Labcd/Ss;IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILabcd/Qs;Labcd/Ss;Labcd/Ss;IZLjava/lang/String;)V
    .registers 10

    const/4 v1, 0x6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    if-eqz p4, :cond_3

    const/4 v0, 0x1

    if-lt p5, v0, :cond_2

    if-gt p5, v1, :cond_2

    invoke-interface {p4}, Labcd/Ss;->size()I

    move-result v0

    if-eqz v0, :cond_0

    if-ne p5, v1, :cond_1

    :cond_0
    iput p1, p0, Labcd/es;->j6:I

    iput-object p2, p0, Labcd/es;->DW:Labcd/Qs;

    iput-object p3, p0, Labcd/es;->FH:Labcd/Ss;

    iput-object p4, p0, Labcd/es;->Hw:Labcd/Ss;

    iput p5, p0, Labcd/es;->v5:I

    iput-boolean p6, p0, Labcd/es;->Zo:Z

    iput-object p7, p0, Labcd/es;->VH:Ljava/lang/String;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "exceptions / branchingness mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus branchingness"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "exceptions == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sources == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "result == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(ILabcd/Qs;Labcd/Ss;Labcd/Ss;Ljava/lang/String;)V
    .registers 14

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Labcd/es;-><init>(ILabcd/Qs;Labcd/Ss;Labcd/Ss;IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILabcd/Qs;Labcd/Ss;Ljava/lang/String;)V
    .registers 13

    sget-object v4, Labcd/Ps;->FH:Labcd/Ps;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Labcd/es;-><init>(ILabcd/Qs;Labcd/Ss;Labcd/Ss;IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILabcd/Ss;Labcd/Ss;)V
    .registers 12

    sget-object v2, Labcd/Qs;->tp:Labcd/Qs;

    const/4 v5, 0x6

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Labcd/es;-><init>(ILabcd/Qs;Labcd/Ss;Labcd/Ss;IZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public DW()I
    .registers 2

    iget v0, p0, Labcd/es;->v5:I

    return v0
.end method

.method public FH()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/es;->VH:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Labcd/es;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public Hw()I
    .registers 2

    iget v0, p0, Labcd/es;->j6:I

    return v0
.end method

.method public VH()Z
    .registers 2

    iget-boolean v0, p0, Labcd/es;->Zo:Z

    return v0
.end method

.method public Zo()Labcd/Ss;
    .registers 2

    iget-object v0, p0, Labcd/es;->FH:Labcd/Ss;

    return-object v0
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
    instance-of v2, p1, Labcd/es;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Labcd/es;

    iget v2, p0, Labcd/es;->j6:I

    iget v3, p1, Labcd/es;->j6:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Labcd/es;->v5:I

    iget v3, p1, Labcd/es;->v5:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Labcd/es;->DW:Labcd/Qs;

    iget-object v3, p1, Labcd/es;->DW:Labcd/Qs;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Labcd/es;->FH:Labcd/Ss;

    iget-object v3, p1, Labcd/es;->FH:Labcd/Ss;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Labcd/es;->Hw:Labcd/Ss;

    iget-object v3, p1, Labcd/es;->Hw:Labcd/Ss;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public gn()Z
    .registers 3

    iget v0, p0, Labcd/es;->j6:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Labcd/es;->j6:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Labcd/es;->v5:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Labcd/es;->DW:Labcd/Qs;

    invoke-virtual {v1}, Labcd/Qs;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Labcd/es;->FH:Labcd/Ss;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Labcd/es;->Hw:Labcd/Ss;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final j6()Z
    .registers 2

    iget-object v0, p0, Labcd/es;->Hw:Labcd/Ss;

    invoke-interface {v0}, Labcd/Ss;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const/16 v5, 0x20

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "Rop{"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Labcd/es;->j6:I

    invoke-static {v1}, Labcd/_r;->DW(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Labcd/es;->DW:Labcd/Qs;

    sget-object v3, Labcd/Qs;->tp:Labcd/Qs;

    if-eq v1, v3, :cond_2

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Labcd/es;->DW:Labcd/Qs;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v1, " <-"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Labcd/es;->FH:Labcd/Ss;

    invoke-interface {v1}, Labcd/Ss;->size()I

    move-result v3

    if-nez v3, :cond_3

    const-string v1, " ."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-boolean v1, p0, Labcd/es;->Zo:Z

    if-eqz v1, :cond_1

    const-string v1, " call"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Labcd/es;->Hw:Labcd/Ss;

    invoke-interface {v1}, Labcd/Ss;->size()I

    move-result v1

    if-eqz v1, :cond_5

    const-string v3, " throws"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    if-ge v0, v1, :cond_6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, p0, Labcd/es;->Hw:Labcd/Ss;

    invoke-interface {v3, v0}, Labcd/Ss;->getType(I)Labcd/Qs;

    move-result-object v3

    sget-object v4, Labcd/Qs;->j3:Labcd/Qs;

    if-ne v3, v4, :cond_4

    const-string v3, "<any>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v1, " ."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_3
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v4, p0, Labcd/es;->FH:Labcd/Ss;

    invoke-interface {v4, v1}, Labcd/Ss;->getType(I)Labcd/Qs;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    iget-object v3, p0, Labcd/es;->Hw:Labcd/Ss;

    invoke-interface {v3, v0}, Labcd/Ss;->getType(I)Labcd/Qs;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    iget v0, p0, Labcd/es;->v5:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    const/4 v1, 0x5

    if-eq v0, v1, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Labcd/es;->v5:I

    invoke-static {v1}, Labcd/Yt;->Hw(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    :goto_4
    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    const-string v0, " switches"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_8
    const-string v0, " ifs"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_9
    const-string v0, " gotos"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_a
    const-string v0, " returns"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_b
    const-string v0, " flows"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4
.end method

.method public v5()Labcd/Qs;
    .registers 2

    iget-object v0, p0, Labcd/es;->DW:Labcd/Qs;

    return-object v0
.end method
