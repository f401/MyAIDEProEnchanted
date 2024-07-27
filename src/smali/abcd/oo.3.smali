.class public final Labcd/oo;
.super Labcd/qo;


# instance fields
.field private final VH:[Labcd/Sn;

.field private final Zo:Labcd/au;

.field private final gn:Z

.field private final v5:Labcd/Sn;


# direct methods
.method public constructor <init>(Labcd/hs;Labcd/Sn;Labcd/au;[Labcd/Sn;)V
    .registers 7

    sget-object v0, Labcd/cs;->FH:Labcd/cs;

    invoke-direct {p0, p1, v0}, Labcd/qo;-><init>(Labcd/hs;Labcd/cs;)V

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    invoke-virtual {p3}, Labcd/au;->size()I

    move-result v0

    array-length v1, p4

    if-ne v0, v1, :cond_1

    const v1, 0xffff

    if-gt v0, v1, :cond_0

    iput-object p2, p0, Labcd/oo;->v5:Labcd/Sn;

    iput-object p3, p0, Labcd/oo;->Zo:Labcd/au;

    iput-object p4, p0, Labcd/oo;->VH:[Labcd/Sn;

    invoke-static {p3}, Labcd/oo;->DW(Labcd/au;)Z

    move-result v0

    iput-boolean v0, p0, Labcd/oo;->gn:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "too many cases"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cases / targets mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "targets == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cases == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "user == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static DW(Labcd/au;)Z
    .registers 9

    const/4 v0, 0x1

    invoke-virtual {p0}, Labcd/au;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Labcd/oo;->j6(Labcd/au;)J

    move-result-wide v2

    invoke-static {p0}, Labcd/oo;->FH(Labcd/au;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-ltz v1, :cond_2

    const-wide/16 v6, 0x5

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x4

    div-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static FH(Labcd/au;)J
    .registers 5

    invoke-virtual {p0}, Labcd/au;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x4

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static j6(Labcd/au;)J
    .registers 5

    invoke-virtual {p0}, Labcd/au;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Labcd/au;->get(I)I

    move-result v1

    int-to-long v2, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Labcd/au;->get(I)I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public DW()I
    .registers 3

    iget-boolean v0, p0, Labcd/oo;->gn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/oo;->Zo:Labcd/au;

    invoke-static {v0}, Labcd/oo;->j6(Labcd/au;)J

    move-result-wide v0

    :goto_0
    long-to-int v0, v0

    return v0

    :cond_0
    iget-object v0, p0, Labcd/oo;->Zo:Labcd/au;

    invoke-static {v0}, Labcd/oo;->FH(Labcd/au;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public j6(Labcd/cs;)Labcd/Vn;
    .registers 7

    new-instance v0, Labcd/oo;

    invoke-virtual {p0}, Labcd/Vn;->VH()Labcd/hs;

    move-result-object v1

    iget-object v2, p0, Labcd/oo;->v5:Labcd/Sn;

    iget-object v3, p0, Labcd/oo;->Zo:Labcd/au;

    iget-object v4, p0, Labcd/oo;->VH:[Labcd/Sn;

    invoke-direct {v0, v1, v2, v3, v4}, Labcd/oo;-><init>(Labcd/hs;Labcd/Sn;Labcd/au;[Labcd/Sn;)V

    return-object v0
.end method

.method protected j6()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x64

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v0, p0, Labcd/oo;->VH:[Labcd/Sn;

    array-length v2, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    const-string v3, "\n    "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Labcd/oo;->Zo:Labcd/au;

    invoke-virtual {v3, v0}, Labcd/au;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Labcd/oo;->VH:[Labcd/Sn;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected j6(Z)Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Labcd/oo;->v5:Labcd/Sn;

    invoke-virtual {v0}, Labcd/Vn;->FH()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v0, 0x64

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v0, p0, Labcd/oo;->VH:[Labcd/Sn;

    array-length v3, v0

    iget-boolean v0, p0, Labcd/oo;->gn:Z

    if-eqz v0, :cond_0

    const-string v0, "packed"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "-switch-payload // for switch @ "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    iget-object v4, p0, Labcd/oo;->VH:[Labcd/Sn;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Labcd/Vn;->FH()I

    move-result v4

    const-string v5, "\n  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Labcd/oo;->Zo:Labcd/au;

    invoke-virtual {v5, v0}, Labcd/au;->get(I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v4}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " // "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sub-int/2addr v4, v1

    invoke-static {v4}, Labcd/Yt;->FH(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const-string v0, "sparse"

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/Lt;)V
    .registers 10

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/oo;->v5:Labcd/Sn;

    invoke-virtual {v0}, Labcd/Vn;->FH()I

    move-result v6

    sget-object v0, Labcd/Yn;->I:Labcd/Xn;

    invoke-virtual {v0}, Labcd/Xn;->DW()Labcd/ao;

    move-result-object v0

    invoke-virtual {v0}, Labcd/ao;->j6()I

    move-result v2

    iget-object v0, p0, Labcd/oo;->VH:[Labcd/Sn;

    array-length v3, v0

    iget-boolean v0, p0, Labcd/oo;->gn:Z

    if-eqz v0, :cond_3

    if-nez v3, :cond_0

    move v5, v1

    :goto_0
    if-nez v3, :cond_1

    move v0, v1

    :goto_1
    sub-int/2addr v0, v5

    add-int/lit8 v7, v0, 0x1

    const/16 v0, 0x100

    invoke-interface {p1, v0}, Labcd/ku;->writeShort(I)V

    invoke-interface {p1, v7}, Labcd/ku;->writeShort(I)V

    invoke-interface {p1, v5}, Labcd/ku;->writeInt(I)V

    move v3, v1

    move v4, v1

    :goto_2
    if-ge v4, v7, :cond_5

    iget-object v0, p0, Labcd/oo;->Zo:Labcd/au;

    invoke-virtual {v0, v3}, Labcd/au;->get(I)I

    move-result v0

    add-int v1, v5, v4

    if-le v0, v1, :cond_2

    move v0, v2

    move v1, v3

    :goto_3
    invoke-interface {p1, v0}, Labcd/ku;->writeInt(I)V

    add-int/lit8 v0, v4, 0x1

    move v3, v1

    move v4, v0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Labcd/oo;->Zo:Labcd/au;

    invoke-virtual {v0, v1}, Labcd/au;->get(I)I

    move-result v0

    move v5, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Labcd/oo;->Zo:Labcd/au;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Labcd/au;->get(I)I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Labcd/oo;->VH:[Labcd/Sn;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Labcd/Vn;->FH()I

    move-result v0

    sub-int/2addr v0, v6

    add-int/lit8 v1, v3, 0x1

    goto :goto_3

    :cond_3
    const/16 v0, 0x200

    invoke-interface {p1, v0}, Labcd/ku;->writeShort(I)V

    invoke-interface {p1, v3}, Labcd/ku;->writeShort(I)V

    move v0, v1

    :goto_4
    if-ge v0, v3, :cond_4

    iget-object v2, p0, Labcd/oo;->Zo:Labcd/au;

    invoke-virtual {v2, v0}, Labcd/au;->get(I)I

    move-result v2

    invoke-interface {p1, v2}, Labcd/ku;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    if-ge v1, v3, :cond_5

    iget-object v0, p0, Labcd/oo;->VH:[Labcd/Sn;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Labcd/Vn;->FH()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-interface {p1, v0}, Labcd/ku;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public we()Z
    .registers 2

    iget-boolean v0, p0, Labcd/oo;->gn:Z

    return v0
.end method
