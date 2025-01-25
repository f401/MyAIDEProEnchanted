.class public Labcd/iP;
.super Ljava/security/BasicPermission;


# instance fields
.field private final DW:I

.field private final j6:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/security/BasicPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Labcd/iP;->j6:Ljava/lang/String;

    invoke-direct {p0, p2}, Labcd/iP;->j6(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Labcd/iP;->DW:I

    return-void
.end method

.method private j6(Ljava/lang/String;)I
    .registers 5

    new-instance v0, Ljava/util/StringTokenizer;

    invoke-static {p1}, Labcd/TP;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, " ,"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_c
    :goto_c
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-nez v1, :cond_1d

    if-eqz p1, :cond_15

    return p1

    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown permissions passed to mask"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "threadlocalecimplicitlyca"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    or-int/lit8 p1, p1, 0x1

    goto :goto_c

    :cond_2c
    const-string v2, "ecimplicitlyca"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    or-int/lit8 p1, p1, 0x2

    goto :goto_c

    :cond_37
    const-string v2, "threadlocaldhdefaultparams"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    or-int/lit8 p1, p1, 0x4

    goto :goto_c

    :cond_42
    const-string v2, "dhdefaultparams"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    or-int/lit8 p1, p1, 0x8

    goto :goto_c

    :cond_4d
    const-string v2, "all"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    or-int/lit8 p1, p1, 0xf

    goto :goto_c
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Labcd/iP;

    if-eqz v1, :cond_1f

    check-cast p1, Labcd/iP;

    iget v1, p0, Labcd/iP;->DW:I

    iget v2, p1, Labcd/iP;->DW:I

    if-ne v1, v2, :cond_1f

    invoke-virtual {p0}, Ljava/security/BasicPermission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/BasicPermission;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    return v0

    :cond_1f
    const/4 p1, 0x0

    return p1
.end method

.method public getActions()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/iP;->j6:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Ljava/security/BasicPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Labcd/iP;->DW:I

    add-int/2addr v0, v1

    return v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 5

    instance-of v0, p1, Labcd/iP;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Ljava/security/BasicPermission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/Permission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    return v1

    :cond_15
    check-cast p1, Labcd/iP;

    iget v0, p0, Labcd/iP;->DW:I

    iget p1, p1, Labcd/iP;->DW:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_20

    const/4 p1, 0x1

    return p1

    :cond_20
    return v1
.end method
