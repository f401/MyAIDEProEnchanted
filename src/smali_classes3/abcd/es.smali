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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_47

    if-eqz p3, :cond_3f

    if-eqz p4, :cond_37

    const/4 v0, 0x1

    if-lt p5, v0, :cond_2f

    const/4 v0, 0x6

    if-gt p5, v0, :cond_2f

    invoke-interface {p4}, Labcd/Ss;->size()I

    move-result v1

    if-eqz v1, :cond_20

    if-ne p5, v0, :cond_18

    goto :goto_20

    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "exceptions / branchingness mismatch"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    :goto_20
    iput p1, p0, Labcd/es;->j6:I

    iput-object p2, p0, Labcd/es;->DW:Labcd/Qs;

    iput-object p3, p0, Labcd/es;->FH:Labcd/Ss;

    iput-object p4, p0, Labcd/es;->Hw:Labcd/Ss;

    iput p5, p0, Labcd/es;->v5:I

    iput-boolean p6, p0, Labcd/es;->Zo:Z

    iput-object p7, p0, Labcd/es;->VH:Ljava/lang/String;

    return-void

    :cond_2f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus branchingness"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_37
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "exceptions == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "sources == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_47
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "result == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
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

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p0}, Labcd/es;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Labcd/es;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Labcd/es;

    iget v1, p0, Labcd/es;->j6:I

    iget v3, p1, Labcd/es;->j6:I

    if-ne v1, v3, :cond_33

    iget v1, p0, Labcd/es;->v5:I

    iget v3, p1, Labcd/es;->v5:I

    if-ne v1, v3, :cond_33

    iget-object v1, p0, Labcd/es;->DW:Labcd/Qs;

    iget-object v3, p1, Labcd/es;->DW:Labcd/Qs;

    if-ne v1, v3, :cond_33

    iget-object v1, p0, Labcd/es;->FH:Labcd/Ss;

    iget-object v3, p1, Labcd/es;->FH:Labcd/Ss;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Labcd/es;->Hw:Labcd/Ss;

    iget-object p1, p1, Labcd/es;->Hw:Labcd/Ss;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :goto_34
    return v0
.end method

.method public gn()Z
    .registers 3

    iget v0, p0, Labcd/es;->j6:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_f

    const/16 v1, 0x10

    if-eq v0, v1, :cond_f

    packed-switch v0, :pswitch_data_12

    const/4 v0, 0x0

    return v0

    :cond_f
    :pswitch_f  #0x14, 0x15, 0x16
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x14
        :pswitch_f  #00000014
        :pswitch_f  #00000015
        :pswitch_f  #00000016
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

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "Rop{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Labcd/es;->j6:I

    invoke-static {v1}, Labcd/_r;->DW(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Labcd/es;->DW:Labcd/Qs;

    sget-object v2, Labcd/Qs;->tp:Labcd/Qs;

    const-string v3, " "

    const-string v4, " ."

    if-eq v1, v2, :cond_28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Labcd/es;->DW:Labcd/Qs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_2b

    :cond_28
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2b
    const-string v1, " <-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Labcd/es;->FH:Labcd/Ss;

    invoke-interface {v1}, Labcd/Ss;->size()I

    move-result v1

    const/16 v2, 0x20

    const/4 v5, 0x0

    if-nez v1, :cond_3f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_51

    :cond_3f
    const/4 v4, 0x0

    :goto_40
    if-ge v4, v1, :cond_51

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v6, p0, Labcd/es;->FH:Labcd/Ss;

    invoke-interface {v6, v4}, Labcd/Ss;->getType(I)Labcd/Qs;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    :cond_51
    :goto_51
    iget-boolean v1, p0, Labcd/es;->Zo:Z

    if-eqz v1, :cond_5a

    const-string v1, " call"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5a
    iget-object v1, p0, Labcd/es;->Hw:Labcd/Ss;

    invoke-interface {v1}, Labcd/Ss;->size()I

    move-result v1

    if-eqz v1, :cond_88

    const-string v3, " throws"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_67
    if-ge v5, v1, :cond_c0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, p0, Labcd/es;->Hw:Labcd/Ss;

    invoke-interface {v3, v5}, Labcd/Ss;->getType(I)Labcd/Qs;

    move-result-object v3

    sget-object v4, Labcd/Qs;->j3:Labcd/Qs;

    if-ne v3, v4, :cond_7c

    const-string v3, "<any>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_85

    :cond_7c
    iget-object v3, p0, Labcd/es;->Hw:Labcd/Ss;

    invoke-interface {v3, v5}, Labcd/Ss;->getType(I)Labcd/Qs;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_85
    add-int/lit8 v5, v5, 0x1

    goto :goto_67

    :cond_88
    iget v1, p0, Labcd/es;->v5:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_bb

    const/4 v2, 0x2

    if-eq v1, v2, :cond_b8

    const/4 v2, 0x3

    if-eq v1, v2, :cond_b5

    const/4 v2, 0x4

    if-eq v1, v2, :cond_b2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_af

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Labcd/es;->v5:I

    invoke-static {v2}, Labcd/Yt;->Hw(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_bd

    :cond_af
    const-string v1, " switches"

    goto :goto_bd

    :cond_b2
    const-string v1, " ifs"

    goto :goto_bd

    :cond_b5
    const-string v1, " gotos"

    goto :goto_bd

    :cond_b8
    const-string v1, " returns"

    goto :goto_bd

    :cond_bb
    const-string v1, " flows"

    :goto_bd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v5()Labcd/Qs;
    .registers 2

    iget-object v0, p0, Labcd/es;->DW:Labcd/Qs;

    return-object v0
.end method
