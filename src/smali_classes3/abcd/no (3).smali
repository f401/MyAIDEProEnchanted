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
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_20

    if-eqz p2, :cond_18

    if-eqz p3, :cond_10

    iput-object p1, p0, Labcd/no;->j6:Labcd/fs;

    iput-object p2, p0, Labcd/no;->DW:[I

    iput-object p3, p0, Labcd/no;->FH:Labcd/On;

    return-void

    :cond_10
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "addresses == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "order == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static j6(Labcd/Nr;Labcd/On;)Labcd/Qn;
    .registers 8

    invoke-virtual {p0}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v0

    invoke-virtual {v0}, Labcd/au;->size()I

    move-result v1

    invoke-virtual {p0}, Labcd/Nr;->Zo()I

    move-result v2

    invoke-virtual {p0}, Labcd/Nr;->v5()Labcd/Tr;

    move-result-object p0

    invoke-virtual {p0}, Labcd/Tr;->DW()Labcd/Ss;

    move-result-object p0

    invoke-interface {p0}, Labcd/Ss;->size()I

    move-result v3

    if-nez v3, :cond_1d

    sget-object p0, Labcd/Qn;->FH:Labcd/Qn;

    return-object p0

    :cond_1d
    const/4 v4, -0x1

    if-ne v2, v4, :cond_22

    if-ne v1, v3, :cond_2f

    :cond_22
    if-eq v2, v4, :cond_37

    add-int/lit8 v4, v3, 0x1

    if-ne v1, v4, :cond_2f

    invoke-virtual {v0, v3}, Labcd/au;->get(I)I

    move-result v1

    if-ne v2, v1, :cond_2f

    goto :goto_37

    :cond_2f
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "shouldn\'t happen: weird successors list"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_37
    :goto_37
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_39
    if-ge v2, v3, :cond_4d

    invoke-interface {p0, v2}, Labcd/Ss;->getType(I)Labcd/Qs;

    move-result-object v4

    sget-object v5, Labcd/Qs;->QX:Labcd/Qs;

    invoke-virtual {v4, v5}, Labcd/Qs;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    add-int/lit8 v3, v2, 0x1

    goto :goto_4d

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_4d
    :goto_4d
    new-instance v2, Labcd/Qn;

    invoke-direct {v2, v3}, Labcd/Qn;-><init>(I)V

    :goto_52
    if-ge v1, v3, :cond_6f

    new-instance v4, Labcd/Ks;

    invoke-interface {p0, v1}, Labcd/Ss;->getType(I)Labcd/Qs;

    move-result-object v5

    invoke-direct {v4, v5}, Labcd/Ks;-><init>(Labcd/Qs;)V

    invoke-virtual {v0, v1}, Labcd/au;->get(I)I

    move-result v5

    invoke-virtual {p1, v5}, Labcd/On;->j6(I)Labcd/Sn;

    move-result-object v5

    invoke-virtual {v5}, Labcd/Vn;->FH()I

    move-result v5

    invoke-virtual {v2, v1, v4, v5}, Labcd/Qn;->j6(ILabcd/Ks;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    :cond_6f
    invoke-virtual {v2}, Labcd/hu;->we()V

    return-object v2
.end method

.method private static j6(Labcd/Nr;Labcd/Nr;Labcd/Qn;Labcd/On;)Labcd/Rn$a;
    .registers 4

    invoke-virtual {p3, p0}, Labcd/On;->DW(Labcd/Nr;)Labcd/Sn;

    move-result-object p0

    invoke-virtual {p3, p1}, Labcd/On;->j6(Labcd/Nr;)Labcd/Sn;

    move-result-object p1

    new-instance p3, Labcd/Rn$a;

    invoke-virtual {p0}, Labcd/Vn;->FH()I

    move-result p0

    invoke-virtual {p1}, Labcd/Vn;->FH()I

    move-result p1

    invoke-direct {p3, p0, p1, p2}, Labcd/Rn$a;-><init>(IILabcd/Qn;)V

    return-object p3
.end method

.method public static j6(Labcd/fs;[ILabcd/On;)Labcd/Rn;
    .registers 13

    array-length v0, p1

    invoke-virtual {p0}, Labcd/fs;->j6()Labcd/Or;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v2, Labcd/Qn;->FH:Labcd/Qn;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v4

    const/4 v6, 0x0

    :goto_10
    if-ge v6, v0, :cond_4b

    aget v7, p1, v6

    invoke-virtual {p0, v7}, Labcd/Or;->v5(I)Labcd/Nr;

    move-result-object v7

    invoke-virtual {v7}, Labcd/Nr;->j6()Z

    move-result v8

    if-nez v8, :cond_1f

    goto :goto_48

    :cond_1f
    invoke-static {v7, p2}, Labcd/no;->j6(Labcd/Nr;Labcd/On;)Labcd/Qn;

    move-result-object v8

    invoke-virtual {v2}, Labcd/Xt;->size()I

    move-result v9

    if-nez v9, :cond_2a

    goto :goto_45

    :cond_2a
    invoke-virtual {v2, v8}, Labcd/Xt;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_38

    invoke-static {v4, v7, p2}, Labcd/no;->j6(Labcd/Nr;Labcd/Nr;Labcd/On;)Z

    move-result v9

    if-eqz v9, :cond_38

    move-object v5, v7

    goto :goto_48

    :cond_38
    invoke-virtual {v2}, Labcd/Xt;->size()I

    move-result v9

    if-eqz v9, :cond_45

    invoke-static {v4, v5, v2, p2}, Labcd/no;->j6(Labcd/Nr;Labcd/Nr;Labcd/Qn;Labcd/On;)Labcd/Rn$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_45
    :goto_45
    move-object v4, v7

    move-object v5, v4

    move-object v2, v8

    :goto_48
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_4b
    invoke-virtual {v2}, Labcd/Xt;->size()I

    move-result p0

    if-eqz p0, :cond_58

    invoke-static {v4, v5, v2, p2}, Labcd/no;->j6(Labcd/Nr;Labcd/Nr;Labcd/Qn;Labcd/On;)Labcd/Rn$a;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_58
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_61

    sget-object p0, Labcd/Rn;->FH:Labcd/Rn;

    return-object p0

    :cond_61
    new-instance p1, Labcd/Rn;

    invoke-direct {p1, p0}, Labcd/Rn;-><init>(I)V

    :goto_66
    if-ge v3, p0, :cond_74

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Labcd/Rn$a;

    invoke-virtual {p1, v3, p2}, Labcd/Rn;->j6(ILabcd/Rn$a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_66

    :cond_74
    invoke-virtual {p1}, Labcd/hu;->we()V

    return-object p1
.end method

.method private static j6(Labcd/Nr;Labcd/Nr;Labcd/On;)Z
    .registers 3

    if-eqz p0, :cond_26

    if-eqz p1, :cond_1e

    invoke-virtual {p2, p0}, Labcd/On;->DW(Labcd/Nr;)Labcd/Sn;

    move-result-object p0

    invoke-virtual {p0}, Labcd/Vn;->FH()I

    move-result p0

    invoke-virtual {p2, p1}, Labcd/On;->j6(Labcd/Nr;)Labcd/Sn;

    move-result-object p1

    invoke-virtual {p1}, Labcd/Vn;->FH()I

    move-result p1

    sub-int/2addr p1, p0

    const p0, 0xffff

    if-gt p1, p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0

    :cond_1e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "end == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_26
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "start == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public DW()Z
    .registers 6

    iget-object v0, p0, Labcd/no;->j6:Labcd/fs;

    invoke-virtual {v0}, Labcd/fs;->j6()Labcd/Or;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_25

    invoke-virtual {v0, v3}, Labcd/Or;->get(I)Labcd/Nr;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Nr;->v5()Labcd/Tr;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Tr;->DW()Labcd/Ss;

    move-result-object v4

    invoke-interface {v4}, Labcd/Ss;->size()I

    move-result v4

    if-eqz v4, :cond_22

    const/4 v0, 0x1

    return v0

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_25
    return v2
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
            "Ljava/util/HashSet<",
            "Labcd/Qs;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iget-object v1, p0, Labcd/no;->j6:Labcd/fs;

    invoke-virtual {v1}, Labcd/fs;->j6()Labcd/Or;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Xt;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v2, :cond_35

    invoke-virtual {v1, v4}, Labcd/Or;->get(I)Labcd/Nr;

    move-result-object v5

    invoke-virtual {v5}, Labcd/Nr;->v5()Labcd/Tr;

    move-result-object v5

    invoke-virtual {v5}, Labcd/Tr;->DW()Labcd/Ss;

    move-result-object v5

    invoke-interface {v5}, Labcd/Ss;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_26
    if-ge v7, v6, :cond_32

    invoke-interface {v5, v7}, Labcd/Ss;->getType(I)Labcd/Qs;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_26

    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_35
    return-object v0
.end method
