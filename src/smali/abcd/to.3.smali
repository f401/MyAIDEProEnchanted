.class public final Labcd/to;
.super Labcd/ao;


# static fields
.field public static final DW:Labcd/ao;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/to;

    invoke-direct {v0}, Labcd/to;-><init>()V

    sput-object v0, Labcd/to;->DW:Labcd/ao;

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

    instance-of v0, p1, Labcd/mo;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Zo(Labcd/Vn;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    return-object v0
.end method

.method public j6()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public j6(Labcd/Vn;Z)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    return-object v0
.end method

.method public j6(Labcd/Lt;Labcd/Vn;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p2, v0}, Labcd/ao;->j6(Labcd/Vn;I)S

    move-result v0

    invoke-static {p1, v0}, Labcd/ao;->j6(Labcd/Lt;S)V

    return-void
.end method
