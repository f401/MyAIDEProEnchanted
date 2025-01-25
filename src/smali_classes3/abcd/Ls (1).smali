.class public final Labcd/Ls;
.super Labcd/hu;

# interfaces
.implements Labcd/ns;


# instance fields
.field private final DW:[Labcd/ms;


# direct methods
.method public constructor <init>(I)V
    .registers 4

    const/4 v0, 0x1

    if-le p1, v0, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    invoke-direct {p0, v1}, Labcd/hu;-><init>(Z)V

    if-lt p1, v0, :cond_10

    new-array p1, p1, [Labcd/ms;

    iput-object p1, p0, Labcd/Ls;->DW:[Labcd/ms;

    return-void

    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size < 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static FH(I)Labcd/ms;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid constant pool index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Labcd/Vt;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/Vt;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public DW(I)Labcd/ms;
    .registers 3

    :try_start_0
    iget-object v0, p0, Labcd/Ls;->DW:[Labcd/ms;

    aget-object p1, v0, p1
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception v0

    invoke-static {p1}, Labcd/Ls;->FH(I)Labcd/ms;

    const/4 p1, 0x0

    throw p1
.end method

.method public get(I)Labcd/ms;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Labcd/Ls;->DW:[Labcd/ms;

    aget-object v1, v1, p1

    if-eqz v1, :cond_8

    return-object v1

    :cond_8
    invoke-static {p1}, Labcd/Ls;->FH(I)Labcd/ms;
    :try_end_b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_b} :catch_c

    throw v0

    :catch_c
    move-exception v1

    invoke-static {p1}, Labcd/Ls;->FH(I)Labcd/ms;

    throw v0
.end method

.method public j6(I)Labcd/ms;
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    invoke-virtual {p0, p1}, Labcd/Ls;->get(I)Labcd/ms;

    move-result-object p1

    return-object p1
.end method

.method public j6(ILabcd/ms;)V
    .registers 7

    invoke-virtual {p0}, Labcd/hu;->J8()V

    const/4 v0, 0x1

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Labcd/ms;->Hw()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    if-lt p1, v0, :cond_44

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    iget-object v1, p0, Labcd/Ls;->DW:[Labcd/ms;

    array-length v3, v1

    sub-int/2addr v3, v0

    if-eq p1, v3, :cond_1f

    add-int/lit8 v0, p1, 0x1

    aput-object v2, v1, v0

    goto :goto_27

    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "(n == size - 1) && cst.isCategory2()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_27
    :goto_27
    if-eqz p2, :cond_3f

    iget-object v0, p0, Labcd/Ls;->DW:[Labcd/ms;

    aget-object v1, v0, p1

    if-nez v1, :cond_3f

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Labcd/ms;->Hw()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Labcd/Ls;->DW:[Labcd/ms;

    aput-object v2, v0, v1

    :cond_3f
    iget-object v0, p0, Labcd/Ls;->DW:[Labcd/ms;

    aput-object p2, v0, p1

    return-void

    :cond_44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n < 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
