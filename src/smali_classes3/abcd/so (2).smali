.class public final Labcd/so;
.super Labcd/ao;


# static fields
.field public static final DW:Labcd/ao;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/so;

    invoke-direct {v0}, Labcd/so;-><init>()V

    sput-object v0, Labcd/so;->DW:Labcd/ao;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/ao;-><init>()V

    return-void
.end method


# virtual methods
.method public VH(Labcd/Vn;)Z
    .registers 3

    instance-of v0, p1, Labcd/po;

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_1e

    :cond_f
    check-cast p1, Labcd/po;

    invoke-virtual {p1}, Labcd/po;->Ws()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0, p1}, Labcd/so;->j6(Labcd/po;)Z

    move-result p1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x1

    :goto_1d
    return p1

    :cond_1e
    :goto_1e
    const/4 p1, 0x0

    return p1
.end method

.method public Zo(Labcd/Vn;)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Labcd/ao;->DW(Labcd/Vn;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j6()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public j6(Labcd/Vn;Z)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Labcd/ao;->j6(Labcd/Vn;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j6(Labcd/Lt;Labcd/Vn;)V
    .registers 4

    move-object v0, p2

    check-cast v0, Labcd/po;

    invoke-virtual {v0}, Labcd/po;->J8()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {p2, v0}, Labcd/ao;->j6(Labcd/Vn;I)S

    move-result p2

    invoke-static {p1, p2}, Labcd/ao;->j6(Labcd/Lt;S)V

    return-void
.end method

.method public j6(Labcd/po;)Z
    .registers 2

    invoke-virtual {p1}, Labcd/po;->J8()I

    move-result p1

    if-eqz p1, :cond_e

    invoke-static {p1}, Labcd/ao;->j6(I)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method
