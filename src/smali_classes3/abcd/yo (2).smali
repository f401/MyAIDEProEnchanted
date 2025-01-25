.class public final Labcd/yo;
.super Labcd/ao;


# static fields
.field public static final DW:Labcd/ao;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/yo;

    invoke-direct {v0}, Labcd/yo;-><init>()V

    sput-object v0, Labcd/yo;->DW:Labcd/ao;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/ao;-><init>()V

    return-void
.end method


# virtual methods
.method public FH(Labcd/Vn;)Ljava/util/BitSet;
    .registers 7

    invoke-virtual {p1}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object p1

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v0

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/bs;->we()I

    move-result v3

    invoke-static {v3}, Labcd/ao;->Hw(I)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v0, v4, :cond_21

    invoke-virtual {v1, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_39

    :cond_21
    invoke-virtual {p1, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    invoke-virtual {p1, v4}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object p1

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result p1

    if-ne v0, p1, :cond_39

    invoke-virtual {v1, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    invoke-virtual {v1, v4, v3}, Ljava/util/BitSet;->set(IZ)V

    :cond_39
    :goto_39
    return-object v1
.end method

.method public VH(Labcd/Vn;)Z
    .registers 7

    instance-of v0, p1, Labcd/Tn;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p1}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_28

    const/4 v4, 0x2

    if-eq v2, v4, :cond_15

    return v1

    :cond_15
    invoke-virtual {v0, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/bs;->we()I

    move-result v4

    invoke-virtual {v0, v3}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    if-eq v4, v0, :cond_2c

    return v1

    :cond_28
    invoke-virtual {v0, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v2

    :cond_2c
    invoke-virtual {v2}, Labcd/bs;->we()I

    move-result v0

    invoke-static {v0}, Labcd/ao;->Hw(I)Z

    move-result v0

    if-nez v0, :cond_37

    return v1

    :cond_37
    check-cast p1, Labcd/Tn;

    invoke-virtual {p1}, Labcd/Tn;->J0()I

    move-result v0

    invoke-virtual {p1}, Labcd/Tn;->we()Labcd/ms;

    move-result-object p1

    invoke-static {v0}, Labcd/ao;->Zo(I)Z

    move-result v0

    if-nez v0, :cond_48

    return v1

    :cond_48
    instance-of v0, p1, Labcd/Ks;

    if-nez v0, :cond_54

    instance-of v0, p1, Labcd/ws;

    if-nez v0, :cond_54

    instance-of p1, p1, Labcd/Js;

    if-eqz p1, :cond_55

    :cond_54
    const/4 v1, 0x1

    :cond_55
    return v1
.end method

.method public Zo(Labcd/Vn;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->lg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/ao;->v5(Labcd/Vn;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j6()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public j6(Labcd/Vn;Z)Ljava/lang/String;
    .registers 3

    if-eqz p2, :cond_7

    invoke-static {p1}, Labcd/ao;->Hw(Labcd/Vn;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    const-string p1, ""

    return-object p1
.end method

.method public j6(Labcd/Lt;Labcd/Vn;)V
    .registers 6

    invoke-virtual {p2}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Labcd/Tn;

    invoke-virtual {v1}, Labcd/Tn;->J0()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    invoke-static {p2, v0}, Labcd/ao;->j6(Labcd/Vn;I)S

    move-result p2

    int-to-short v0, v1

    invoke-static {p1, p2, v0}, Labcd/ao;->j6(Labcd/Lt;SS)V

    return-void
.end method
