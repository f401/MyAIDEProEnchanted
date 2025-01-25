.class public final Labcd/Io;
.super Labcd/ao;


# static fields
.field public static final DW:Labcd/ao;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/Io;

    invoke-direct {v0}, Labcd/Io;-><init>()V

    sput-object v0, Labcd/Io;->DW:Labcd/ao;

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

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object p1

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x1

    return p1

    :cond_11
    :goto_11
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

    const/4 v0, 0x3

    return v0
.end method

.method public j6(Labcd/Vn;Z)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Labcd/ao;->j6(Labcd/Vn;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j6(Labcd/Lt;Labcd/Vn;)V
    .registers 5

    move-object v0, p2

    check-cast v0, Labcd/po;

    invoke-virtual {v0}, Labcd/po;->J8()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Labcd/ao;->j6(Labcd/Vn;I)S

    move-result p2

    invoke-static {p1, p2, v0}, Labcd/ao;->j6(Labcd/Lt;SI)V

    return-void
.end method

.method public j6(Labcd/po;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
