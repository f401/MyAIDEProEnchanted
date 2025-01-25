.class public final Labcd/vo;
.super Labcd/ao;


# static fields
.field public static final DW:Labcd/ao;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/vo;

    invoke-direct {v0}, Labcd/vo;-><init>()V

    sput-object v0, Labcd/vo;->DW:Labcd/ao;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/ao;-><init>()V

    return-void
.end method


# virtual methods
.method public FH(Labcd/Vn;)Ljava/util/BitSet;
    .registers 4

    invoke-virtual {p1}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object p1

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object p1

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result p1

    invoke-static {p1}, Labcd/ao;->Hw(I)Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-object v0
.end method

.method public VH(Labcd/Vn;)Z
    .registers 5

    invoke-virtual {p1}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v0

    instance-of p1, p1, Labcd/mo;

    const/4 v1, 0x0

    if-eqz p1, :cond_1f

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1f

    invoke-virtual {v0, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object p1

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result p1

    invoke-static {p1}, Labcd/ao;->Hw(I)Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    return v1
.end method

.method public Zo(Labcd/Vn;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object p1

    invoke-virtual {p1}, Labcd/bs;->lg()Ljava/lang/String;

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

    const-string p1, ""

    return-object p1
.end method

.method public j6(Labcd/Lt;Labcd/Vn;)V
    .registers 5

    invoke-virtual {p2}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    invoke-static {p2, v0}, Labcd/ao;->j6(Labcd/Vn;I)S

    move-result p2

    invoke-static {p1, p2}, Labcd/ao;->j6(Labcd/Lt;S)V

    return-void
.end method
