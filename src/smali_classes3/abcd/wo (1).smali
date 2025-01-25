.class public final Labcd/wo;
.super Labcd/ao;


# static fields
.field public static final DW:Labcd/ao;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/wo;

    invoke-direct {v0}, Labcd/wo;-><init>()V

    sput-object v0, Labcd/wo;->DW:Labcd/ao;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/ao;-><init>()V

    return-void
.end method


# virtual methods
.method public FH(Labcd/Vn;)Ljava/util/BitSet;
    .registers 5

    invoke-virtual {p1}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object p1

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/bs;->we()I

    move-result v2

    invoke-static {v2}, Labcd/ao;->v5(I)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object p1

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result p1

    invoke-static {p1}, Labcd/ao;->v5(I)Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-object v0
.end method

.method public VH(Labcd/Vn;)Z
    .registers 7

    instance-of v0, p1, Labcd/mo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p1}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object p1

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2d

    const/4 v4, 0x3

    if-eq v0, v4, :cond_16

    return v1

    :cond_16
    invoke-virtual {p1, v3}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {p1, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v2

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v4

    invoke-virtual {p1, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object p1

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result p1

    if-eq v4, p1, :cond_35

    return v1

    :cond_2d
    invoke-virtual {p1, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {p1, v3}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v2

    :cond_35
    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result p1

    invoke-static {p1}, Labcd/ao;->v5(I)Z

    move-result p1

    if-eqz p1, :cond_4a

    invoke-virtual {v2}, Labcd/bs;->we()I

    move-result p1

    invoke-static {p1}, Labcd/ao;->v5(I)Z

    move-result p1

    if-eqz p1, :cond_4a

    const/4 v1, 0x1

    :cond_4a
    return v1
.end method

.method public Zo(Labcd/Vn;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object p1

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {p1, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/bs;->lg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object p1

    invoke-virtual {p1}, Labcd/bs;->lg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    .registers 6

    invoke-virtual {p2}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x2

    invoke-virtual {v0, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/bs;->we()I

    move-result v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    invoke-static {v2, v0}, Labcd/ao;->DW(II)I

    move-result v0

    invoke-static {p2, v0}, Labcd/ao;->j6(Labcd/Vn;I)S

    move-result p2

    invoke-static {p1, p2}, Labcd/ao;->j6(Labcd/Lt;S)V

    return-void
.end method
