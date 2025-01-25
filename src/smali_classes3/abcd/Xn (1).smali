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
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Labcd/pq;->DW(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-static {p2}, Labcd/pq;->DW(I)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-static {p3}, Labcd/pq;->DW(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    if-eqz p4, :cond_22

    iput p1, p0, Labcd/Xn;->j6:I

    iput p2, p0, Labcd/Xn;->DW:I

    iput p3, p0, Labcd/Xn;->FH:I

    iput-object p4, p0, Labcd/Xn;->Hw:Labcd/ao;

    iput-boolean p5, p0, Labcd/Xn;->v5:Z

    return-void

    :cond_22
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "format == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus nextOpcode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_32
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus family"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus opcode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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

    packed-switch v0, :pswitch_data_40

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

    :pswitch_1c  #0x3d
    sget-object v0, Labcd/Yn;->Xa:Labcd/Xn;

    return-object v0

    :pswitch_1f  #0x3c
    sget-object v0, Labcd/Yn;->Eq:Labcd/Xn;

    return-object v0

    :pswitch_22  #0x3b
    sget-object v0, Labcd/Yn;->et:Labcd/Xn;

    return-object v0

    :pswitch_25  #0x3a
    sget-object v0, Labcd/Yn;->CU:Labcd/Xn;

    return-object v0

    :pswitch_28  #0x39
    sget-object v0, Labcd/Yn;->jJ:Labcd/Xn;

    return-object v0

    :pswitch_2b  #0x38
    sget-object v0, Labcd/Yn;->wc:Labcd/Xn;

    return-object v0

    :pswitch_2e  #0x37
    sget-object v0, Labcd/Yn;->yO:Labcd/Xn;

    return-object v0

    :pswitch_31  #0x36
    sget-object v0, Labcd/Yn;->XG:Labcd/Xn;

    return-object v0

    :pswitch_34  #0x35
    sget-object v0, Labcd/Yn;->XX:Labcd/Xn;

    return-object v0

    :pswitch_37  #0x34
    sget-object v0, Labcd/Yn;->kQ:Labcd/Xn;

    return-object v0

    :pswitch_3a  #0x33
    sget-object v0, Labcd/Yn;->OW:Labcd/Xn;

    return-object v0

    :pswitch_3d  #0x32
    sget-object v0, Labcd/Yn;->br:Labcd/Xn;

    return-object v0

    :pswitch_data_40
    .packed-switch 0x32
        :pswitch_3d  #00000032
        :pswitch_3a  #00000033
        :pswitch_37  #00000034
        :pswitch_34  #00000035
        :pswitch_31  #00000036
        :pswitch_2e  #00000037
        :pswitch_2b  #00000038
        :pswitch_28  #00000039
        :pswitch_25  #0000003a
        :pswitch_22  #0000003b
        :pswitch_1f  #0000003c
        :pswitch_1c  #0000003d
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
