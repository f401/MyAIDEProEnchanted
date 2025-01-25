.class public final Labcd/oo;
.super Labcd/qo;


# instance fields
.field private final VH:[Labcd/Sn;

.field private final Zo:Labcd/au;

.field private final gn:Z

.field private final v5:Labcd/Sn;


# direct methods
.method public constructor <init>(Labcd/hs;Labcd/Sn;Labcd/au;[Labcd/Sn;)V
    .registers 6

    sget-object v0, Labcd/cs;->FH:Labcd/cs;

    invoke-direct {p0, p1, v0}, Labcd/qo;-><init>(Labcd/hs;Labcd/cs;)V

    if-eqz p2, :cond_44

    if-eqz p3, :cond_3c

    if-eqz p4, :cond_34

    invoke-virtual {p3}, Labcd/au;->size()I

    move-result p1

    array-length v0, p4

    if-ne p1, v0, :cond_2c

    const v0, 0xffff

    if-gt p1, v0, :cond_24

    iput-object p2, p0, Labcd/oo;->v5:Labcd/Sn;

    iput-object p3, p0, Labcd/oo;->Zo:Labcd/au;

    iput-object p4, p0, Labcd/oo;->VH:[Labcd/Sn;

    invoke-static {p3}, Labcd/oo;->DW(Labcd/au;)Z

    move-result p1

    iput-boolean p1, p0, Labcd/oo;->gn:Z

    return-void

    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "too many cases"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cases / targets mismatch"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "targets == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "cases == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_44
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "user == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static DW(Labcd/au;)Z
    .registers 8

    invoke-virtual {p0}, Labcd/au;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_9

    return v2

    :cond_9
    invoke-static {p0}, Labcd/oo;->j6(Labcd/au;)J

    move-result-wide v0

    invoke-static {p0}, Labcd/oo;->FH(Labcd/au;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p0, v0, v5

    if-ltz p0, :cond_23

    const-wide/16 v5, 0x5

    mul-long v3, v3, v5

    const-wide/16 v5, 0x4

    div-long/2addr v3, v5

    cmp-long p0, v0, v3

    if-gtz p0, :cond_23

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    return v2
.end method

.method private static FH(Labcd/au;)J
    .registers 5

    invoke-virtual {p0}, Labcd/au;->size()I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x4

    mul-long v0, v0, v2

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static j6(Labcd/au;)J
    .registers 6

    invoke-virtual {p0}, Labcd/au;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Labcd/au;->get(I)I

    move-result v1

    int-to-long v1, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Labcd/au;->get(I)I

    move-result p0

    int-to-long v3, p0

    sub-long/2addr v3, v1

    const-wide/16 v0, 0x1

    add-long/2addr v3, v0

    const-wide/16 v0, 0x2

    mul-long v3, v3, v0

    const-wide/16 v0, 0x4

    add-long/2addr v3, v0

    const-wide/32 v0, 0x7fffffff

    cmp-long p0, v3, v0

    if-gtz p0, :cond_24

    goto :goto_26

    :cond_24
    const-wide/16 v3, -0x1

    :goto_26
    return-wide v3
.end method


# virtual methods
.method public DW()I
    .registers 3

    iget-boolean v0, p0, Labcd/oo;->gn:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Labcd/oo;->Zo:Labcd/au;

    invoke-static {v0}, Labcd/oo;->j6(Labcd/au;)J

    move-result-wide v0

    goto :goto_11

    :cond_b
    iget-object v0, p0, Labcd/oo;->Zo:Labcd/au;

    invoke-static {v0}, Labcd/oo;->FH(Labcd/au;)J

    move-result-wide v0

    :goto_11
    long-to-int v1, v0

    return v1
.end method

.method public j6(Labcd/cs;)Labcd/Vn;
    .registers 6

    new-instance p1, Labcd/oo;

    invoke-virtual {p0}, Labcd/Vn;->VH()Labcd/hs;

    move-result-object v0

    iget-object v1, p0, Labcd/oo;->v5:Labcd/Sn;

    iget-object v2, p0, Labcd/oo;->Zo:Labcd/au;

    iget-object v3, p0, Labcd/oo;->VH:[Labcd/Sn;

    invoke-direct {p1, v0, v1, v2, v3}, Labcd/oo;-><init>(Labcd/hs;Labcd/Sn;Labcd/au;[Labcd/Sn;)V

    return-object p1
.end method

.method protected j6()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Labcd/oo;->VH:[Labcd/Sn;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_2a

    const-string v3, "\n    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Labcd/oo;->Zo:Labcd/au;

    invoke-virtual {v3, v2}, Labcd/au;->get(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Labcd/oo;->VH:[Labcd/Sn;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected j6(Z)Ljava/lang/String;
    .registers 7

    iget-object p1, p0, Labcd/oo;->v5:Labcd/Sn;

    invoke-virtual {p1}, Labcd/Vn;->FH()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Labcd/oo;->VH:[Labcd/Sn;

    array-length v1, v1

    iget-boolean v2, p0, Labcd/oo;->gn:Z

    if-eqz v2, :cond_17

    const-string v2, "packed"

    goto :goto_19

    :cond_17
    const-string v2, "sparse"

    :goto_19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "-switch-payload // for switch @ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_29
    if-ge v2, v1, :cond_5d

    iget-object v3, p0, Labcd/oo;->VH:[Labcd/Sn;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Labcd/Vn;->FH()I

    move-result v3

    const-string v4, "\n  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Labcd/oo;->Zo:Labcd/au;

    invoke-virtual {v4, v2}, Labcd/au;->get(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " // "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sub-int/2addr v3, p1

    invoke-static {v3}, Labcd/Yt;->FH(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_5d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j6(Labcd/Lt;)V
    .registers 10

    iget-object v0, p0, Labcd/oo;->v5:Labcd/Sn;

    invoke-virtual {v0}, Labcd/Vn;->FH()I

    move-result v0

    sget-object v1, Labcd/Yn;->I:Labcd/Xn;

    invoke-virtual {v1}, Labcd/Xn;->DW()Labcd/ao;

    move-result-object v1

    invoke-virtual {v1}, Labcd/ao;->j6()I

    move-result v1

    iget-object v2, p0, Labcd/oo;->VH:[Labcd/Sn;

    array-length v2, v2

    iget-boolean v3, p0, Labcd/oo;->gn:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_5c

    if-nez v2, :cond_1c

    const/4 v3, 0x0

    goto :goto_22

    :cond_1c
    iget-object v3, p0, Labcd/oo;->Zo:Labcd/au;

    invoke-virtual {v3, v4}, Labcd/au;->get(I)I

    move-result v3

    :goto_22
    if-nez v2, :cond_26

    const/4 v2, 0x0

    goto :goto_2e

    :cond_26
    iget-object v5, p0, Labcd/oo;->Zo:Labcd/au;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v5, v2}, Labcd/au;->get(I)I

    move-result v2

    :goto_2e
    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    const/16 v5, 0x100

    invoke-interface {p1, v5}, Labcd/ku;->writeShort(I)V

    invoke-interface {p1, v2}, Labcd/ku;->writeShort(I)V

    invoke-interface {p1, v3}, Labcd/ku;->writeInt(I)V

    const/4 v5, 0x0

    :goto_3d
    if-ge v4, v2, :cond_84

    iget-object v6, p0, Labcd/oo;->Zo:Labcd/au;

    invoke-virtual {v6, v5}, Labcd/au;->get(I)I

    move-result v6

    add-int v7, v3, v4

    if-le v6, v7, :cond_4b

    move v6, v1

    goto :goto_56

    :cond_4b
    iget-object v6, p0, Labcd/oo;->VH:[Labcd/Sn;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Labcd/Vn;->FH()I

    move-result v6

    sub-int/2addr v6, v0

    add-int/lit8 v5, v5, 0x1

    :goto_56
    invoke-interface {p1, v6}, Labcd/ku;->writeInt(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    :cond_5c
    const/16 v1, 0x200

    invoke-interface {p1, v1}, Labcd/ku;->writeShort(I)V

    invoke-interface {p1, v2}, Labcd/ku;->writeShort(I)V

    const/4 v1, 0x0

    :goto_65
    if-ge v1, v2, :cond_73

    iget-object v3, p0, Labcd/oo;->Zo:Labcd/au;

    invoke-virtual {v3, v1}, Labcd/au;->get(I)I

    move-result v3

    invoke-interface {p1, v3}, Labcd/ku;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    :cond_73
    :goto_73
    if-ge v4, v2, :cond_84

    iget-object v1, p0, Labcd/oo;->VH:[Labcd/Sn;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Labcd/Vn;->FH()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p1, v1}, Labcd/ku;->writeInt(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_73

    :cond_84
    return-void
.end method

.method public we()Z
    .registers 2

    iget-boolean v0, p0, Labcd/oo;->gn:Z

    return v0
.end method
