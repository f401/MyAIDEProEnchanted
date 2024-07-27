.class public final Labcd/Ls;
.super Labcd/hu;

# interfaces
.implements Labcd/ns;


# instance fields
.field private final DW:[Labcd/ms;


# direct methods
.method public constructor <init>(I)V
    .registers 4

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Labcd/hu;-><init>(Z)V

    if-lt p1, v1, :cond_1

    new-array v0, p1, [Labcd/ms;

    iput-object v0, p0, Labcd/Ls;->DW:[Labcd/ms;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static FH(I)Labcd/ms;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid constant pool index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Labcd/Vt;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/Vt;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public DW(I)Labcd/ms;
    .registers 3

    :try_start_0
    iget-object v0, p0, Labcd/Ls;->DW:[Labcd/ms;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p1}, Labcd/Ls;->FH(I)Labcd/ms;

    const/4 v0, 0x0

    throw v0
.end method

.method public get(I)Labcd/ms;
    .registers 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Labcd/Ls;->DW:[Labcd/ms;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Labcd/Ls;->FH(I)Labcd/ms;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    throw v1

    :catch_0
    move-exception v0

    invoke-static {p1}, Labcd/Ls;->FH(I)Labcd/ms;

    throw v1
.end method

.method public j6(I)Labcd/ms;
    .registers 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Labcd/Ls;->get(I)Labcd/ms;

    move-result-object v0

    goto :goto_0
.end method

.method public j6(ILabcd/ms;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Labcd/hu;->J8()V

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Labcd/ms;->Hw()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    if-lt p1, v1, :cond_4

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/Ls;->DW:[Labcd/ms;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-eq p1, v1, :cond_3

    add-int/lit8 v1, p1, 0x1

    aput-object v2, v0, v1

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Labcd/Ls;->DW:[Labcd/ms;

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Labcd/ms;->Hw()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Ls;->DW:[Labcd/ms;

    aput-object v2, v0, v1

    :cond_1
    iget-object v0, p0, Labcd/Ls;->DW:[Labcd/ms;

    aput-object p2, v0, p1

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(n == size - 1) && cst.isCategory2()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
