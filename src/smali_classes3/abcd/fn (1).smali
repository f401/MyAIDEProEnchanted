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
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_24

    iput-object p1, p0, Labcd/fn;->j6:Labcd/jn;

    invoke-virtual {p1}, Labcd/jn;->v5()Labcd/ns;

    move-result-object v0

    iput-object v0, p0, Labcd/fn;->DW:Labcd/ns;

    iput-object p4, p0, Labcd/fn;->Hw:Labcd/xn;

    invoke-virtual {p1}, Labcd/jn;->Hw()Labcd/Pt;

    move-result-object p1

    add-int/2addr p3, p2

    invoke-virtual {p1, p2, p3}, Labcd/Pt;->j6(II)Labcd/Pt;

    move-result-object p1

    iput-object p1, p0, Labcd/fn;->FH:Labcd/Pt;

    invoke-virtual {p1}, Labcd/Pt;->j6()Labcd/Pt$a;

    move-result-object p1

    iput-object p1, p0, Labcd/fn;->v5:Labcd/Pt$a;

    const/4 p1, 0x0

    iput p1, p0, Labcd/fn;->Zo:I

    return-void

    :cond_24
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "cf == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private DW()Labcd/ms;
    .registers 5

    iget-object v0, p0, Labcd/fn;->v5:Labcd/Pt$a;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iget-object v1, p0, Labcd/fn;->DW:Labcd/ns;

    invoke-interface {v1, v0}, Labcd/ns;->get(I)Labcd/ms;

    move-result-object v0

    iget-object v1, p0, Labcd/fn;->Hw:Labcd/xn;

    if-eqz v1, :cond_35

    instance-of v1, v0, Labcd/Js;

    if-eqz v1, :cond_1c

    move-object v1, v0

    check-cast v1, Labcd/Js;

    invoke-virtual {v1}, Labcd/Js;->lg()Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    :cond_1c
    invoke-interface {v0}, Labcd/lu;->aM()Ljava/lang/String;

    move-result-object v1

    :goto_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "constant_value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Labcd/fn;->j6(ILjava/lang/String;)V

    :cond_35
    return-object v0
.end method

.method private DW(I)V
    .registers 3

    iget-object v0, p0, Labcd/fn;->v5:Labcd/Pt$a;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v0

    if-lt v0, p1, :cond_9

    return-void

    :cond_9
    new-instance p1, Labcd/wn;

    const-string v0, "truncated annotation attribute"

    invoke-direct {p1, v0}, Labcd/wn;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private FH(Labcd/Ir;)Labcd/Hr;
    .registers 7

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Labcd/fn;->DW(I)V

    iget-object v0, p0, Labcd/fn;->v5:Labcd/Pt$a;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iget-object v1, p0, Labcd/fn;->v5:Labcd/Pt$a;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    new-instance v2, Labcd/Ks;

    iget-object v3, p0, Labcd/fn;->DW:Labcd/ns;

    invoke-interface {v3, v0}, Labcd/ns;->get(I)Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/Js;

    invoke-virtual {v0}, Labcd/Js;->we()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/Qs;->j6(Ljava/lang/String;)Labcd/Qs;

    move-result-object v0

    invoke-direct {v2, v0}, Labcd/Ks;-><init>(Labcd/Qs;)V

    iget-object v0, p0, Labcd/fn;->Hw:Labcd/xn;

    if-eqz v0, :cond_56

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Labcd/Ks;->aM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-direct {p0, v3, v0}, Labcd/fn;->j6(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "num_elements: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Labcd/fn;->j6(ILjava/lang/String;)V

    :cond_56
    new-instance v0, Labcd/Hr;

    invoke-direct {v0, v2, p1}, Labcd/Hr;-><init>(Labcd/Ks;Labcd/Ir;)V

    const/4 p1, 0x0

    const/4 v2, 0x0

    :goto_5d
    if-ge v2, v1, :cond_92

    iget-object v3, p0, Labcd/fn;->Hw:Labcd/xn;

    if-eqz v3, :cond_80

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "elements["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Labcd/fn;->j6(ILjava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Labcd/fn;->j6(I)V

    :cond_80
    invoke-direct {p0}, Labcd/fn;->FH()Labcd/Lr;

    move-result-object v3

    invoke-virtual {v0, v3}, Labcd/Hr;->j6(Labcd/Lr;)V

    iget-object v3, p0, Labcd/fn;->Hw:Labcd/xn;

    if-eqz v3, :cond_8f

    const/4 v3, -0x1

    invoke-direct {p0, v3}, Labcd/fn;->j6(I)V

    :cond_8f
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    :cond_92
    invoke-virtual {v0}, Labcd/hu;->we()V

    return-object v0
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

    if-eqz v1, :cond_39

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

    :cond_39
    invoke-direct {p0}, Labcd/fn;->Hw()Labcd/ms;

    move-result-object v1

    iget-object v2, p0, Labcd/fn;->Hw:Labcd/xn;

    if-eqz v2, :cond_45

    const/4 v2, -0x1

    invoke-direct {p0, v2}, Labcd/fn;->j6(I)V

    :cond_45
    new-instance v2, Labcd/Lr;

    invoke-direct {v2, v0, v1}, Labcd/Lr;-><init>(Labcd/Js;Labcd/ms;)V

    return-object v2
.end method

.method private Hw(Labcd/Ir;)Labcd/Jr;
    .registers 8

    iget-object v0, p0, Labcd/fn;->v5:Labcd/Pt$a;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iget-object v1, p0, Labcd/fn;->Hw:Labcd/xn;

    if-eqz v1, :cond_23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "num_annotations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Labcd/fn;->j6(ILjava/lang/String;)V

    :cond_23
    new-instance v1, Labcd/Jr;

    invoke-direct {v1}, Labcd/Jr;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2a
    if-ge v3, v0, :cond_5f

    iget-object v4, p0, Labcd/fn;->Hw:Labcd/xn;

    if-eqz v4, :cond_4d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "annotations["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Labcd/fn;->j6(ILjava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Labcd/fn;->j6(I)V

    :cond_4d
    invoke-direct {p0, p1}, Labcd/fn;->FH(Labcd/Ir;)Labcd/Hr;

    move-result-object v4

    invoke-virtual {v1, v4}, Labcd/Jr;->j6(Labcd/Hr;)V

    iget-object v4, p0, Labcd/fn;->Hw:Labcd/xn;

    if-eqz v4, :cond_5c

    const/4 v5, -0x1

    invoke-interface {v4, v5}, Labcd/xn;->j6(I)V

    :cond_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_5f
    invoke-virtual {v1}, Labcd/hu;->we()V

    return-object v1
.end method

.method private Hw()Labcd/ms;
    .registers 8

    iget-object v0, p0, Labcd/fn;->v5:Labcd/Pt$a;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    iget-object v1, p0, Labcd/fn;->Hw:Labcd/xn;

    const/4 v2, 0x1

    if-eqz v1, :cond_2d

    new-instance v1, Labcd/Js;

    int-to-char v3, v0

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Labcd/Js;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Labcd/Js;->lg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Labcd/fn;->j6(ILjava/lang/String;)V

    :cond_2d
    const/16 v1, 0x40

    if-eq v0, v1, :cond_1d6

    const/16 v1, 0x46

    if-eq v0, v1, :cond_1cf

    const/16 v1, 0x53

    if-eq v0, v1, :cond_1c0

    const/16 v1, 0x63

    const/4 v3, 0x2

    if-eq v0, v1, :cond_188

    const/16 v1, 0x65

    if-eq v0, v1, :cond_129

    const/16 v1, 0x73

    if-eq v0, v1, :cond_124

    const/16 v1, 0x49

    if-eq v0, v1, :cond_11d

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_116

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_107

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_9c

    packed-switch v0, :pswitch_data_1e2

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

    :pswitch_74  #0x44
    invoke-direct {p0}, Labcd/fn;->DW()Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/us;

    return-object v0

    :pswitch_7b  #0x43
    invoke-direct {p0}, Labcd/fn;->DW()Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/ys;

    invoke-virtual {v0}, Labcd/ys;->rN()I

    invoke-virtual {v0}, Labcd/ys;->rN()I

    move-result v0

    invoke-static {v0}, Labcd/ts;->j6(I)Labcd/ts;

    move-result-object v0

    return-object v0

    :pswitch_8d  #0x42
    invoke-direct {p0}, Labcd/fn;->DW()Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/ys;

    invoke-virtual {v0}, Labcd/ys;->rN()I

    move-result v0

    invoke-static {v0}, Labcd/ss;->j6(I)Labcd/ss;

    move-result-object v0

    return-object v0

    :cond_9c
    invoke-direct {p0, v3}, Labcd/fn;->DW(I)V

    iget-object v0, p0, Labcd/fn;->v5:Labcd/Pt$a;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    new-instance v1, Labcd/ps$a;

    invoke-direct {v1, v0}, Labcd/ps$a;-><init>(I)V

    iget-object v4, p0, Labcd/fn;->Hw:Labcd/xn;

    if-eqz v4, :cond_c5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "num_values: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Labcd/fn;->j6(ILjava/lang/String;)V

    invoke-direct {p0, v2}, Labcd/fn;->j6(I)V

    :cond_c5
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_c7
    const/4 v5, -0x1

    if-ge v4, v0, :cond_f7

    iget-object v6, p0, Labcd/fn;->Hw:Labcd/xn;

    if-eqz v6, :cond_ed

    invoke-direct {p0, v5}, Labcd/fn;->j6(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "element_value["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Labcd/fn;->j6(ILjava/lang/String;)V

    invoke-direct {p0, v2}, Labcd/fn;->j6(I)V

    :cond_ed
    invoke-direct {p0}, Labcd/fn;->Hw()Labcd/ms;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Labcd/ps$a;->j6(ILabcd/ms;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_c7

    :cond_f7
    iget-object v0, p0, Labcd/fn;->Hw:Labcd/xn;

    if-eqz v0, :cond_fe

    invoke-direct {p0, v5}, Labcd/fn;->j6(I)V

    :cond_fe
    invoke-virtual {v1}, Labcd/hu;->we()V

    new-instance v0, Labcd/ps;

    invoke-direct {v0, v1}, Labcd/ps;-><init>(Labcd/ps$a;)V

    return-object v0

    :cond_107
    invoke-direct {p0}, Labcd/fn;->DW()Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/ys;

    invoke-virtual {v0}, Labcd/ys;->rN()I

    move-result v0

    invoke-static {v0}, Labcd/rs;->j6(I)Labcd/rs;

    move-result-object v0

    return-object v0

    :cond_116
    invoke-direct {p0}, Labcd/fn;->DW()Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/Es;

    return-object v0

    :cond_11d
    invoke-direct {p0}, Labcd/fn;->DW()Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/ys;

    return-object v0

    :cond_124
    invoke-direct {p0}, Labcd/fn;->DW()Labcd/ms;

    move-result-object v0

    return-object v0

    :cond_129
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

    if-eqz v2, :cond_17d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type_name: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Labcd/fn;->j6(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "const_name: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Labcd/fn;->j6(ILjava/lang/String;)V

    :cond_17d
    new-instance v2, Labcd/vs;

    new-instance v3, Labcd/Hs;

    invoke-direct {v3, v1, v0}, Labcd/Hs;-><init>(Labcd/Js;Labcd/Js;)V

    invoke-direct {v2, v3}, Labcd/vs;-><init>(Labcd/Hs;)V

    return-object v2

    :cond_188
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

    move-result-object v0

    iget-object v1, p0, Labcd/fn;->Hw:Labcd/xn;

    if-eqz v1, :cond_1ba

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "class_info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Labcd/Qs;->aM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Labcd/fn;->j6(ILjava/lang/String;)V

    :cond_1ba
    new-instance v1, Labcd/Ks;

    invoke-direct {v1, v0}, Labcd/Ks;-><init>(Labcd/Qs;)V

    return-object v1

    :cond_1c0
    invoke-direct {p0}, Labcd/fn;->DW()Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/ys;

    invoke-virtual {v0}, Labcd/ys;->rN()I

    move-result v0

    invoke-static {v0}, Labcd/Is;->j6(I)Labcd/Is;

    move-result-object v0

    return-object v0

    :cond_1cf
    invoke-direct {p0}, Labcd/fn;->DW()Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/xs;

    return-object v0

    :cond_1d6
    new-instance v0, Labcd/os;

    sget-object v1, Labcd/Ir;->Hw:Labcd/Ir;

    invoke-direct {p0, v1}, Labcd/fn;->FH(Labcd/Ir;)Labcd/Hr;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/os;-><init>(Labcd/Hr;)V

    return-object v0

    :pswitch_data_1e2
    .packed-switch 0x42
        :pswitch_8d  #00000042
        :pswitch_7b  #00000043
        :pswitch_74  #00000044
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

    iget p2, p0, Labcd/fn;->Zo:I

    add-int/2addr p2, p1

    iput p2, p0, Labcd/fn;->Zo:I

    return-void
.end method

.method private v5(Labcd/Ir;)Labcd/Kr;
    .registers 9

    iget-object v0, p0, Labcd/fn;->v5:Labcd/Pt$a;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    iget-object v1, p0, Labcd/fn;->Hw:Labcd/xn;

    const/4 v2, 0x1

    if-eqz v1, :cond_23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "num_parameters: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/Yt;->Hw(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Labcd/fn;->j6(ILjava/lang/String;)V

    :cond_23
    new-instance v1, Labcd/Kr;

    invoke-direct {v1, v0}, Labcd/Kr;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2a
    if-ge v4, v0, :cond_5e

    iget-object v5, p0, Labcd/fn;->Hw:Labcd/xn;

    if-eqz v5, :cond_4c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parameter_annotations["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Labcd/fn;->j6(ILjava/lang/String;)V

    invoke-direct {p0, v2}, Labcd/fn;->j6(I)V

    :cond_4c
    invoke-direct {p0, p1}, Labcd/fn;->Hw(Labcd/Ir;)Labcd/Jr;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Labcd/Kr;->j6(ILabcd/Jr;)V

    iget-object v5, p0, Labcd/fn;->Hw:Labcd/xn;

    if-eqz v5, :cond_5b

    const/4 v6, -0x1

    invoke-interface {v5, v6}, Labcd/xn;->j6(I)V

    :cond_5b
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    :cond_5e
    invoke-virtual {v1}, Labcd/hu;->we()V

    return-object v1
.end method


# virtual methods
.method public DW(Labcd/Ir;)Labcd/Kr;
    .registers 4

    :try_start_0
    invoke-direct {p0, p1}, Labcd/fn;->v5(Labcd/Ir;)Labcd/Kr;

    move-result-object p1

    iget-object v0, p0, Labcd/fn;->v5:Labcd/Pt$a;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v0

    if-nez v0, :cond_d

    return-object p1

    :cond_d
    new-instance p1, Labcd/wn;

    const-string v0, "extra data in attribute"

    invoke-direct {p1, v0}, Labcd/wn;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_15

    :catch_15
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public j6(Labcd/Ir;)Labcd/Jr;
    .registers 4

    :try_start_0
    invoke-direct {p0, p1}, Labcd/fn;->Hw(Labcd/Ir;)Labcd/Jr;

    move-result-object p1

    iget-object v0, p0, Labcd/fn;->v5:Labcd/Pt$a;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v0

    if-nez v0, :cond_d

    return-object p1

    :cond_d
    new-instance p1, Labcd/wn;

    const-string v0, "extra data in attribute"

    invoke-direct {p1, v0}, Labcd/wn;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_15

    :catch_15
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public j6()Labcd/ms;
    .registers 4

    :try_start_0
    invoke-direct {p0}, Labcd/fn;->Hw()Labcd/ms;

    move-result-object v0

    iget-object v1, p0, Labcd/fn;->v5:Labcd/Pt$a;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v1

    if-nez v1, :cond_d

    return-object v0

    :cond_d
    new-instance v0, Labcd/wn;

    const-string v1, "extra data in attribute"

    invoke-direct {v0, v1}, Labcd/wn;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_15

    :catch_15
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "shouldn\'t happen"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
