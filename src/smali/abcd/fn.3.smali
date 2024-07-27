.class public final Labcd/fn;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Labcd/ns;

.field private final FH:Labcd/Pt;

.field private final Hw:Labcd/xn;

.field private Zo:I

.field private final j6:Labcd/jn;

.field private final v5:Labcd/Pt$a;


# direct methods
.method public constructor <init>(Labcd/jn;IILabcd/xn;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Labcd/fn;->j6:Labcd/jn;

    invoke-virtual {p1}, Labcd/jn;->v5()Labcd/ns;

    move-result-object v0

    iput-object v0, p0, Labcd/fn;->DW:Labcd/ns;

    iput-object p4, p0, Labcd/fn;->Hw:Labcd/xn;

    invoke-virtual {p1}, Labcd/jn;->Hw()Labcd/Pt;

    move-result-object v0

    add-int v1, p3, p2

    invoke-virtual {v0, p2, v1}, Labcd/Pt;->j6(II)Labcd/Pt;

    move-result-object v0

    iput-object v0, p0, Labcd/fn;->FH:Labcd/Pt;

    iget-object v0, p0, Labcd/fn;->FH:Labcd/Pt;

    invoke-virtual {v0}, Labcd/Pt;->j6()Labcd/Pt$a;

    move-result-object v0

    iput-object v0, p0, Labcd/fn;->v5:Labcd/Pt$a;

    const/4 v0, 0x0

    iput v0, p0, Labcd/fn;->Zo:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cf == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private DW()Labcd/ms;
    .registers 5

    iget-object v0, p0, Labcd/fn;->v5:Labcd/Pt$a;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iget-object v1, p0, Labcd/fn;->DW:Labcd/ns;

    invoke-interface {v1, v0}, Labcd/ns;->get(I)Labcd/ms;

    move-result-object v1

    iget-object v0, p0, Labcd/fn;->Hw:Labcd/xn;

    if-eqz v0, :cond_0

    instance-of v0, v1, Labcd/Js;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Labcd/Js;

    invoke-virtual {v0}, Labcd/Js;->lg()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "constant_value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Labcd/fn;->j6(ILjava/lang/String;)V

    :cond_0
    return-object v1

    :cond_1
    invoke-interface {v1}, Labcd/lu;->aM()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private DW(I)V
    .registers 4

    iget-object v0, p0, Labcd/fn;->v5:Labcd/Pt$a;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v0

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Labcd/wn;

    const-string v1, "truncated annotation attribute"

    invoke-direct {v0, v1}, Labcd/wn;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private FH(Labcd/Ir;)Labcd/Hr;
    .registers 8

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Labcd/fn;->DW(I)V

    iget-object v0, p0, Labcd/fn;->v5:Labcd/Pt$a;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iget-object v2, p0, Labcd/fn;->v5:Labcd/Pt$a;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    new-instance v3, Labcd/Ks;

    iget-object v4, p0, Labcd/fn;->DW:Labcd/ns;

    invoke-interface {v4, v0}, Labcd/ns;->get(I)Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/Js;

    invoke-virtual {v0}, Labcd/Js;->we()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/Qs;->j6(Ljava/lang/String;)Labcd/Qs;

    move-result-object v0

    invoke-direct {v3, v0}, Labcd/Ks;-><init>(Labcd/Qs;)V

    iget-object v0, p0, Labcd/fn;->Hw:Labcd/xn;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Labcd/Ks;->aM()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Labcd/fn;->j6(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "num_elements: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Labcd/fn;->j6(ILjava/lang/String;)V

    :cond_0
    new-instance v4, Labcd/Hr;

    invoke-direct {v4, v3, p1}, Labcd/Hr;-><init>(Labcd/Ks;Labcd/Ir;)V

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_3

    iget-object v3, p0, Labcd/fn;->Hw:Labcd/xn;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "elements["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Labcd/fn;->j6(ILjava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Labcd/fn;->j6(I)V

    :cond_1
    invoke-direct {p0}, Labcd/fn;->FH()Labcd/Lr;

    move-result-object v3

    invoke-virtual {v4, v3}, Labcd/Hr;->j6(Labcd/Lr;)V

    iget-object v3, p0, Labcd/fn;->Hw:Labcd/xn;

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    invoke-direct {p0, v3}, Labcd/fn;->j6(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Labcd/hu;->we()V

    return-object v4
.end method

.method private FH()Labcd/Lr;
    .registers 4

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Labcd/fn;->DW(I)V

    iget-object v0, p0, Labcd/fn;->v5:Labcd/Pt$a;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iget-object v1, p0, Labcd/fn;->DW:Labcd/ns;

    invoke-interface {v1, v0}, Labcd/ns;->get(I)Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/Js;

    iget-object v1, p0, Labcd/fn;->Hw:Labcd/xn;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "element_name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Labcd/fn;->j6(ILjava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "value: "

    invoke-direct {p0, v1, v2}, Labcd/fn;->j6(ILjava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Labcd/fn;->j6(I)V

    :cond_0
    invoke-direct {p0}, Labcd/fn;->Hw()Labcd/ms;

    move-result-object v1

    iget-object v2, p0, Labcd/fn;->Hw:Labcd/xn;

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    invoke-direct {p0, v2}, Labcd/fn;->j6(I)V

    :cond_1
    new-instance v2, Labcd/Lr;

    invoke-direct {v2, v0, v1}, Labcd/Lr;-><init>(Labcd/Js;Labcd/ms;)V

    return-object v2
.end method

.method private Hw(Labcd/Ir;)Labcd/Jr;
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/fn;->v5:Labcd/Pt$a;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    iget-object v0, p0, Labcd/fn;->Hw:Labcd/xn;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "num_annotations: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Labcd/fn;->j6(ILjava/lang/String;)V

    :cond_0
    new-instance v3, Labcd/Jr;

    invoke-direct {v3}, Labcd/Jr;-><init>()V

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_3

    iget-object v4, p0, Labcd/fn;->Hw:Labcd/xn;

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "annotations["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Labcd/fn;->j6(ILjava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Labcd/fn;->j6(I)V

    :cond_1
    invoke-direct {p0, p1}, Labcd/fn;->FH(Labcd/Ir;)Labcd/Hr;

    move-result-object v4

    invoke-virtual {v3, v4}, Labcd/Jr;->j6(Labcd/Hr;)V

    iget-object v4, p0, Labcd/fn;->Hw:Labcd/xn;

    if-eqz v4, :cond_2

    const/4 v5, -0x1

    invoke-interface {v4, v5}, Labcd/xn;->j6(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Labcd/hu;->we()V

    return-object v3
.end method

.method private Hw()Labcd/ms;
    .registers 9

    const/4 v1, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x2

    iget-object v0, p0, Labcd/fn;->v5:Labcd/Pt$a;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    iget-object v2, p0, Labcd/fn;->Hw:Labcd/xn;

    if-eqz v2, :cond_0

    new-instance v2, Labcd/Js;

    int-to-char v3, v0

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Labcd/Js;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Labcd/Js;->lg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v6, v2}, Labcd/fn;->j6(ILjava/lang/String;)V

    :cond_0
    const/16 v2, 0x40

    if-eq v0, v2, :cond_10

    const/16 v2, 0x46

    if-eq v0, v2, :cond_f

    const/16 v2, 0x53

    if-eq v0, v2, :cond_e

    const/16 v2, 0x63

    if-eq v0, v2, :cond_c

    const/16 v2, 0x65

    if-eq v0, v2, :cond_a

    const/16 v2, 0x73

    if-eq v0, v2, :cond_9

    const/16 v2, 0x49

    if-eq v0, v2, :cond_8

    const/16 v2, 0x4a

    if-eq v0, v2, :cond_7

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_6

    const/16 v2, 0x5b

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown annotation tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/Yt;->Hw(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Labcd/wn;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/wn;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Labcd/fn;->DW()Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/us;

    :goto_0
    return-object v0

    :pswitch_1
    invoke-direct {p0}, Labcd/fn;->DW()Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/ys;

    invoke-virtual {v0}, Labcd/ys;->rN()I

    invoke-virtual {v0}, Labcd/ys;->rN()I

    move-result v0

    invoke-static {v0}, Labcd/ts;->j6(I)Labcd/ts;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Labcd/fn;->DW()Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/ys;

    invoke-virtual {v0}, Labcd/ys;->rN()I

    move-result v0

    invoke-static {v0}, Labcd/ss;->j6(I)Labcd/ss;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v5}, Labcd/fn;->DW(I)V

    iget-object v0, p0, Labcd/fn;->v5:Labcd/Pt$a;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    new-instance v3, Labcd/ps$a;

    invoke-direct {v3, v2}, Labcd/ps$a;-><init>(I)V

    iget-object v0, p0, Labcd/fn;->Hw:Labcd/xn;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "num_values: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Labcd/fn;->j6(ILjava/lang/String;)V

    invoke-direct {p0, v6}, Labcd/fn;->j6(I)V

    :cond_2
    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_4

    iget-object v4, p0, Labcd/fn;->Hw:Labcd/xn;

    if-eqz v4, :cond_3

    invoke-direct {p0, v7}, Labcd/fn;->j6(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "element_value["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Labcd/fn;->j6(ILjava/lang/String;)V

    invoke-direct {p0, v6}, Labcd/fn;->j6(I)V

    :cond_3
    invoke-direct {p0}, Labcd/fn;->Hw()Labcd/ms;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Labcd/ps$a;->j6(ILabcd/ms;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Labcd/fn;->Hw:Labcd/xn;

    if-eqz v0, :cond_5

    invoke-direct {p0, v7}, Labcd/fn;->j6(I)V

    :cond_5
    invoke-virtual {v3}, Labcd/hu;->we()V

    new-instance v0, Labcd/ps;

    invoke-direct {v0, v3}, Labcd/ps;-><init>(Labcd/ps$a;)V

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0}, Labcd/fn;->DW()Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/ys;

    invoke-virtual {v0}, Labcd/ys;->rN()I

    move-result v0

    invoke-static {v0}, Labcd/rs;->j6(I)Labcd/rs;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0}, Labcd/fn;->DW()Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/Es;

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Labcd/fn;->DW()Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/ys;

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0}, Labcd/fn;->DW()Labcd/ms;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Labcd/fn;->DW(I)V

    iget-object v0, p0, Labcd/fn;->v5:Labcd/Pt$a;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iget-object v1, p0, Labcd/fn;->v5:Labcd/Pt$a;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    iget-object v2, p0, Labcd/fn;->DW:Labcd/ns;

    invoke-interface {v2, v0}, Labcd/ns;->get(I)Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/Js;

    iget-object v2, p0, Labcd/fn;->DW:Labcd/ns;

    invoke-interface {v2, v1}, Labcd/ns;->get(I)Labcd/ms;

    move-result-object v1

    check-cast v1, Labcd/Js;

    iget-object v2, p0, Labcd/fn;->Hw:Labcd/xn;

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type_name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, v2}, Labcd/fn;->j6(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "const_name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v5, v2}, Labcd/fn;->j6(ILjava/lang/String;)V

    :cond_b
    new-instance v2, Labcd/vs;

    new-instance v3, Labcd/Hs;

    invoke-direct {v3, v1, v0}, Labcd/Hs;-><init>(Labcd/Js;Labcd/Js;)V

    invoke-direct {v2, v3}, Labcd/vs;-><init>(Labcd/Hs;)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Labcd/fn;->v5:Labcd/Pt$a;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iget-object v1, p0, Labcd/fn;->DW:Labcd/ns;

    invoke-interface {v1, v0}, Labcd/ns;->get(I)Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/Js;

    invoke-virtual {v0}, Labcd/Js;->we()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/Qs;->FH(Ljava/lang/String;)Labcd/Qs;

    move-result-object v1

    iget-object v0, p0, Labcd/fn;->Hw:Labcd/xn;

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "class_info: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Labcd/Qs;->aM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Labcd/fn;->j6(ILjava/lang/String;)V

    :cond_d
    new-instance v0, Labcd/Ks;

    invoke-direct {v0, v1}, Labcd/Ks;-><init>(Labcd/Qs;)V

    goto/16 :goto_0

    :cond_e
    invoke-direct {p0}, Labcd/fn;->DW()Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/ys;

    invoke-virtual {v0}, Labcd/ys;->rN()I

    move-result v0

    invoke-static {v0}, Labcd/Is;->j6(I)Labcd/Is;

    move-result-object v0

    goto/16 :goto_0

    :cond_f
    invoke-direct {p0}, Labcd/fn;->DW()Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/xs;

    goto/16 :goto_0

    :cond_10
    new-instance v0, Labcd/os;

    sget-object v1, Labcd/Ir;->Hw:Labcd/Ir;

    invoke-direct {p0, v1}, Labcd/fn;->FH(Labcd/Ir;)Labcd/Hr;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/os;-><init>(Labcd/Hr;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private j6(I)V
    .registers 3

    iget-object v0, p0, Labcd/fn;->Hw:Labcd/xn;

    invoke-interface {v0, p1}, Labcd/xn;->j6(I)V

    return-void
.end method

.method private j6(ILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Labcd/fn;->Hw:Labcd/xn;

    iget-object v1, p0, Labcd/fn;->FH:Labcd/Pt;

    iget v2, p0, Labcd/fn;->Zo:I

    invoke-interface {v0, v1, v2, p1, p2}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    iget v0, p0, Labcd/fn;->Zo:I

    add-int/2addr v0, p1

    iput v0, p0, Labcd/fn;->Zo:I

    return-void
.end method

.method private v5(Labcd/Ir;)Labcd/Kr;
    .registers 9

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/fn;->v5:Labcd/Pt$a;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    iget-object v0, p0, Labcd/fn;->Hw:Labcd/xn;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "num_parameters: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Labcd/Yt;->Hw(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Labcd/fn;->j6(ILjava/lang/String;)V

    :cond_0
    new-instance v3, Labcd/Kr;

    invoke-direct {v3, v2}, Labcd/Kr;-><init>(I)V

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_3

    iget-object v4, p0, Labcd/fn;->Hw:Labcd/xn;

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parameter_annotations["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Labcd/fn;->j6(ILjava/lang/String;)V

    invoke-direct {p0, v6}, Labcd/fn;->j6(I)V

    :cond_1
    invoke-direct {p0, p1}, Labcd/fn;->Hw(Labcd/Ir;)Labcd/Jr;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Labcd/Kr;->j6(ILabcd/Jr;)V

    iget-object v4, p0, Labcd/fn;->Hw:Labcd/xn;

    if-eqz v4, :cond_2

    const/4 v5, -0x1

    invoke-interface {v4, v5}, Labcd/xn;->j6(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Labcd/hu;->we()V

    return-object v3
.end method


# virtual methods
.method public DW(Labcd/Ir;)Labcd/Kr;
    .registers 5

    :try_start_0
    invoke-direct {p0, p1}, Labcd/fn;->v5(Labcd/Ir;)Labcd/Kr;

    move-result-object v0

    iget-object v1, p0, Labcd/fn;->v5:Labcd/Pt$a;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Labcd/wn;

    const-string v1, "extra data in attribute"

    invoke-direct {v0, v1}, Labcd/wn;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "shouldn\'t happen"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public j6(Labcd/Ir;)Labcd/Jr;
    .registers 5

    :try_start_0
    invoke-direct {p0, p1}, Labcd/fn;->Hw(Labcd/Ir;)Labcd/Jr;

    move-result-object v0

    iget-object v1, p0, Labcd/fn;->v5:Labcd/Pt$a;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Labcd/wn;

    const-string v1, "extra data in attribute"

    invoke-direct {v0, v1}, Labcd/wn;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "shouldn\'t happen"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public j6()Labcd/ms;
    .registers 4

    :try_start_0
    invoke-direct {p0}, Labcd/fn;->Hw()Labcd/ms;

    move-result-object v0

    iget-object v1, p0, Labcd/fn;->v5:Labcd/Pt$a;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Labcd/wn;

    const-string v1, "extra data in attribute"

    invoke-direct {v0, v1}, Labcd/wn;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "shouldn\'t happen"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
