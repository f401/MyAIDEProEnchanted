.class public final Labcd/Fo;
.super Labcd/ao;


# static fields
.field public static final DW:Labcd/ao;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/Fo;

    invoke-direct {v0}, Labcd/Fo;-><init>()V

    sput-object v0, Labcd/Fo;->DW:Labcd/ao;

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
    .registers 6

    invoke-virtual {p1}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v0

    instance-of v1, p1, Labcd/po;

    const/4 v2, 0x0

    if-eqz v1, :cond_3b

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3b

    invoke-virtual {v0, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/bs;->we()I

    move-result v1

    invoke-static {v1}, Labcd/ao;->v5(I)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    invoke-static {v0}, Labcd/ao;->v5(I)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_3b

    :cond_2e
    check-cast p1, Labcd/po;

    invoke-virtual {p1}, Labcd/po;->Ws()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p0, p1}, Labcd/Fo;->j6(Labcd/po;)Z

    move-result v1

    :cond_3a
    return v1

    :cond_3b
    :goto_3b
    return v2
.end method

.method public Zo(Labcd/Vn;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p1}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/bs;->lg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->lg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/ao;->DW(Labcd/Vn;)Ljava/lang/String;

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

    invoke-static {p1}, Labcd/ao;->j6(Labcd/Vn;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j6(Labcd/Lt;Labcd/Vn;)V
    .registers 7

    invoke-virtual {p2}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Labcd/po;

    invoke-virtual {v1}, Labcd/po;->J8()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/bs;->we()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    invoke-static {v2, v0}, Labcd/ao;->DW(II)I

    move-result v0

    invoke-static {p2, v0}, Labcd/ao;->j6(Labcd/Vn;I)S

    move-result p2

    int-to-short v0, v1

    invoke-static {p1, p2, v0}, Labcd/ao;->j6(Labcd/Lt;SS)V

    return-void
.end method

.method public j6(Labcd/po;)Z
    .registers 2

    invoke-virtual {p1}, Labcd/po;->J8()I

    move-result p1

    if-eqz p1, :cond_e

    invoke-static {p1}, Labcd/ao;->FH(I)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method
