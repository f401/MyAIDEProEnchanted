.class public final Labcd/Xn;
.super Ljava/lang/Object;


# instance fields
.field private final DW:I

.field private final FH:I

.field private final Hw:Labcd/ao;

.field private final j6:I

.field private final v5:Z


# direct methods
.method public constructor <init>(IIILabcd/ao;Z)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Labcd/pq;->DW(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Labcd/pq;->DW(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p3}, Labcd/pq;->DW(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    iput p1, p0, Labcd/Xn;->j6:I

    iput p2, p0, Labcd/Xn;->DW:I

    iput p3, p0, Labcd/Xn;->FH:I

    iput-object p4, p0, Labcd/Xn;->Hw:Labcd/ao;

    iput-boolean p5, p0, Labcd/Xn;->v5:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "format == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus nextOpcode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus opcode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public DW()Labcd/ao;
    .registers 2

    iget-object v0, p0, Labcd/Xn;->Hw:Labcd/ao;

    return-object v0
.end method

.method public FH()Ljava/lang/String;
    .registers 2

    iget v0, p0, Labcd/Xn;->j6:I

    invoke-static {v0}, Labcd/oq;->DW(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Hw()I
    .registers 2

    iget v0, p0, Labcd/Xn;->FH:I

    return v0
.end method

.method public VH()Z
    .registers 2

    iget-boolean v0, p0, Labcd/Xn;->v5:Z

    return v0
.end method

.method public Zo()Labcd/Xn;
    .registers 3

    iget v0, p0, Labcd/Xn;->j6:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bogus opcode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    sget-object v0, Labcd/Yn;->Xa:Labcd/Xn;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Labcd/Yn;->Eq:Labcd/Xn;

    goto :goto_0

    :pswitch_2
    sget-object v0, Labcd/Yn;->et:Labcd/Xn;

    goto :goto_0

    :pswitch_3
    sget-object v0, Labcd/Yn;->CU:Labcd/Xn;

    goto :goto_0

    :pswitch_4
    sget-object v0, Labcd/Yn;->jJ:Labcd/Xn;

    goto :goto_0

    :pswitch_5
    sget-object v0, Labcd/Yn;->wc:Labcd/Xn;

    goto :goto_0

    :pswitch_6
    sget-object v0, Labcd/Yn;->yO:Labcd/Xn;

    goto :goto_0

    :pswitch_7
    sget-object v0, Labcd/Yn;->XG:Labcd/Xn;

    goto :goto_0

    :pswitch_8
    sget-object v0, Labcd/Yn;->XX:Labcd/Xn;

    goto :goto_0

    :pswitch_9
    sget-object v0, Labcd/Yn;->kQ:Labcd/Xn;

    goto :goto_0

    :pswitch_a
    sget-object v0, Labcd/Yn;->OW:Labcd/Xn;

    goto :goto_0

    :pswitch_b
    sget-object v0, Labcd/Yn;->br:Labcd/Xn;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public j6()I
    .registers 2

    iget v0, p0, Labcd/Xn;->DW:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Labcd/Xn;->FH()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v5()I
    .registers 2

    iget v0, p0, Labcd/Xn;->j6:I

    return v0
.end method
