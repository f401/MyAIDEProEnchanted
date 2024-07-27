.class public final Labcd/no;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Pn;


# instance fields
.field private final DW:[I

.field private final FH:Labcd/On;

.field private final j6:Labcd/fs;


# direct methods
.method public constructor <init>(Labcd/fs;[ILabcd/On;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-object p1, p0, Labcd/no;->j6:Labcd/fs;

    iput-object p2, p0, Labcd/no;->DW:[I

    iput-object p3, p0, Labcd/no;->FH:Labcd/On;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "addresses == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "order == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static j6(Labcd/Nr;Labcd/On;)Labcd/Qn;
    .registers 9

    const/4 v2, 0x0

    const/4 v6, -0x1

    invoke-virtual {p0}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v3

    invoke-virtual {v3}, Labcd/au;->size()I

    move-result v1

    invoke-virtual {p0}, Labcd/Nr;->Zo()I

    move-result v4

    invoke-virtual {p0}, Labcd/Nr;->v5()Labcd/Tr;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Tr;->DW()Labcd/Ss;

    move-result-object v5

    invoke-interface {v5}, Labcd/Ss;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Labcd/Qn;->FH:Labcd/Qn;

    :goto_0
    return-object v0

    :cond_0
    if-ne v4, v6, :cond_1

    if-ne v1, v0, :cond_4

    :cond_1
    if-eq v4, v6, :cond_2

    add-int/lit8 v6, v0, 0x1

    if-ne v1, v6, :cond_4

    invoke-virtual {v3, v0}, Labcd/au;->get(I)I

    move-result v1

    if-ne v4, v1, :cond_4

    :cond_2
    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-interface {v5, v1}, Labcd/Ss;->getType(I)Labcd/Qs;

    move-result-object v4

    sget-object v6, Labcd/Qs;->QX:Labcd/Qs;

    invoke-virtual {v4, v6}, Labcd/Qs;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v0, v1, 0x1

    :cond_3
    new-instance v1, Labcd/Qn;

    invoke-direct {v1, v0}, Labcd/Qn;-><init>(I)V

    :goto_2
    if-ge v2, v0, :cond_6

    new-instance v4, Labcd/Ks;

    invoke-interface {v5, v2}, Labcd/Ss;->getType(I)Labcd/Qs;

    move-result-object v6

    invoke-direct {v4, v6}, Labcd/Ks;-><init>(Labcd/Qs;)V

    invoke-virtual {v3, v2}, Labcd/au;->get(I)I

    move-result v6

    invoke-virtual {p1, v6}, Labcd/On;->j6(I)Labcd/Sn;

    move-result-object v6

    invoke-virtual {v6}, Labcd/Vn;->FH()I

    move-result v6

    invoke-virtual {v1, v2, v4, v6}, Labcd/Qn;->j6(ILabcd/Ks;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen: weird successors list"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Labcd/hu;->we()V

    move-object v0, v1

    goto :goto_0
.end method

.method private static j6(Labcd/Nr;Labcd/Nr;Labcd/Qn;Labcd/On;)Labcd/Rn$a;
    .registers 7

    invoke-virtual {p3, p0}, Labcd/On;->DW(Labcd/Nr;)Labcd/Sn;

    move-result-object v0

    invoke-virtual {p3, p1}, Labcd/On;->j6(Labcd/Nr;)Labcd/Sn;

    move-result-object v1

    new-instance v2, Labcd/Rn$a;

    invoke-virtual {v0}, Labcd/Vn;->FH()I

    move-result v0

    invoke-virtual {v1}, Labcd/Vn;->FH()I

    move-result v1

    invoke-direct {v2, v0, v1, p2}, Labcd/Rn$a;-><init>(IILabcd/Qn;)V

    return-object v2
.end method

.method public static j6(Labcd/fs;[ILabcd/On;)Labcd/Rn;
    .registers 14

    const/4 v1, 0x0

    const/4 v5, 0x0

    array-length v7, p1

    invoke-virtual {p0}, Labcd/fs;->j6()Labcd/Or;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v0, Labcd/Qn;->FH:Labcd/Qn;

    move-object v2, v1

    move v6, v5

    move-object v4, v1

    :goto_0
    if-ge v6, v7, :cond_4

    aget v1, p1, v6

    invoke-virtual {v8, v1}, Labcd/Or;->v5(I)Labcd/Nr;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Nr;->j6()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_0

    :cond_0
    invoke-static {v3, p2}, Labcd/no;->j6(Labcd/Nr;Labcd/On;)Labcd/Qn;

    move-result-object v1

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v10

    if-nez v10, :cond_2

    :cond_1
    :goto_2
    move-object v0, v1

    move-object v2, v3

    move-object v4, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Labcd/Xt;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v2, v3, p2}, Labcd/no;->j6(Labcd/Nr;Labcd/Nr;Labcd/On;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v4, v3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {v2, v4, v0, p2}, Labcd/no;->j6(Labcd/Nr;Labcd/Nr;Labcd/Qn;Labcd/On;)Labcd/Rn$a;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v2, v4, v0, p2}, Labcd/no;->j6(Labcd/Nr;Labcd/Nr;Labcd/Qn;Labcd/On;)Labcd/Rn$a;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_6

    sget-object v0, Labcd/Rn;->FH:Labcd/Rn;

    :goto_3
    return-object v0

    :cond_6
    new-instance v1, Labcd/Rn;

    invoke-direct {v1, v3}, Labcd/Rn;-><init>(I)V

    move v2, v5

    :goto_4
    if-ge v2, v3, :cond_7

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Rn$a;

    invoke-virtual {v1, v2, v0}, Labcd/Rn;->j6(ILabcd/Rn$a;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Labcd/hu;->we()V

    move-object v0, v1

    goto :goto_3
.end method

.method private static j6(Labcd/Nr;Labcd/Nr;Labcd/On;)Z
    .registers 5

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p2, p0}, Labcd/On;->DW(Labcd/Nr;)Labcd/Sn;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Vn;->FH()I

    move-result v0

    invoke-virtual {p2, p1}, Labcd/On;->j6(Labcd/Nr;)Labcd/Sn;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Vn;->FH()I

    move-result v1

    sub-int v0, v1, v0

    const v1, 0xffff

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "end == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "start == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public DW()Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Labcd/no;->j6:Labcd/fs;

    invoke-virtual {v1}, Labcd/fs;->j6()Labcd/Or;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Xt;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Labcd/Or;->get(I)Labcd/Nr;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Nr;->v5()Labcd/Tr;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Tr;->DW()Labcd/Ss;

    move-result-object v4

    invoke-interface {v4}, Labcd/Ss;->size()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public build()Labcd/Rn;
    .registers 4

    iget-object v0, p0, Labcd/no;->j6:Labcd/fs;

    iget-object v1, p0, Labcd/no;->DW:[I

    iget-object v2, p0, Labcd/no;->FH:Labcd/On;

    invoke-static {v0, v1, v2}, Labcd/no;->j6(Labcd/fs;[ILabcd/On;)Labcd/Rn;

    move-result-object v0

    return-object v0
.end method

.method public j6()Ljava/util/HashSet;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Labcd/Qs;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v3, Ljava/util/HashSet;

    const/16 v0, 0x14

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(I)V

    iget-object v0, p0, Labcd/no;->j6:Labcd/fs;

    invoke-virtual {v0}, Labcd/fs;->j6()Labcd/Or;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Xt;->size()I

    move-result v5

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    invoke-virtual {v4, v2}, Labcd/Or;->get(I)Labcd/Nr;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Nr;->v5()Labcd/Tr;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Tr;->DW()Labcd/Ss;

    move-result-object v6

    invoke-interface {v6}, Labcd/Ss;->size()I

    move-result v7

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_0

    invoke-interface {v6, v0}, Labcd/Ss;->getType(I)Labcd/Qs;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-object v3
.end method
