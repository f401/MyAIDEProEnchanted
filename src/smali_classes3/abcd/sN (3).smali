.class public Labcd/sN;
.super Labcd/yL;

# interfaces
.implements Labcd/pL;


# static fields
.field private static j6:Labcd/tN;


# instance fields
.field private DW:Z

.field private FH:I

.field private Hw:Labcd/tN;

.field private v5:[Labcd/rN;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Labcd/uN;->j6:Labcd/tN;

    sput-object v0, Labcd/sN;->j6:Labcd/tN;

    return-void
.end method

.method private constructor <init>(Labcd/FL;)V
    .registers 3

    sget-object v0, Labcd/sN;->j6:Labcd/tN;

    invoke-direct {p0, v0, p1}, Labcd/sN;-><init>(Labcd/tN;Labcd/FL;)V

    return-void
.end method

.method private constructor <init>(Labcd/tN;Labcd/FL;)V
    .registers 5

    invoke-direct {p0}, Labcd/yL;-><init>()V

    iput-object p1, p0, Labcd/sN;->Hw:Labcd/tN;

    invoke-virtual {p2}, Labcd/FL;->tp()I

    move-result p1

    new-array p1, p1, [Labcd/rN;

    iput-object p1, p0, Labcd/sN;->v5:[Labcd/rN;

    invoke-virtual {p2}, Labcd/FL;->u7()Ljava/util/Enumeration;

    move-result-object p1

    const/4 p2, 0x0

    :goto_12
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_19

    return-void

    :cond_19
    iget-object v0, p0, Labcd/sN;->v5:[Labcd/rN;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Labcd/rN;->j6(Ljava/lang/Object;)Labcd/rN;

    move-result-object v1

    aput-object v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_12
.end method

.method public static j6(Ljava/lang/Object;)Labcd/sN;
    .registers 2

    instance-of v0, p0, Labcd/sN;

    if-eqz v0, :cond_7

    check-cast p0, Labcd/sN;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Labcd/sN;

    invoke-static {p0}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object p0

    invoke-direct {v0, p0}, Labcd/sN;-><init>(Labcd/FL;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public DW()Labcd/EL;
    .registers 3

    new-instance v0, Labcd/tM;

    iget-object v1, p0, Labcd/sN;->v5:[Labcd/rN;

    invoke-direct {v0, v1}, Labcd/tM;-><init>([Labcd/qL;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Labcd/sN;

    const/4 v2, 0x0

    if-nez v1, :cond_e

    instance-of v1, p1, Labcd/FL;

    if-nez v1, :cond_e

    return v2

    :cond_e
    move-object v1, p1

    check-cast v1, Labcd/qL;

    invoke-interface {v1}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v1

    invoke-virtual {p0}, Labcd/sN;->DW()Labcd/EL;

    move-result-object v3

    invoke-virtual {v3, v1}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    return v0

    :cond_20
    :try_start_20
    iget-object v0, p0, Labcd/sN;->Hw:Labcd/tN;

    new-instance v1, Labcd/sN;

    check-cast p1, Labcd/qL;

    invoke-interface {p1}, Labcd/qL;->DW()Labcd/EL;

    move-result-object p1

    invoke-static {p1}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object p1

    invoke-direct {v1, p1}, Labcd/sN;-><init>(Labcd/FL;)V

    invoke-interface {v0, p0, v1}, Labcd/tN;->j6(Labcd/sN;Labcd/sN;)Z

    move-result p1
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_35} :catch_36

    return p1

    :catch_36
    move-exception p1

    return v2
.end method

.method public hashCode()I
    .registers 2

    iget-boolean v0, p0, Labcd/sN;->DW:Z

    if-eqz v0, :cond_7

    iget v0, p0, Labcd/sN;->FH:I

    return v0

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/sN;->DW:Z

    iget-object v0, p0, Labcd/sN;->Hw:Labcd/tN;

    invoke-interface {v0, p0}, Labcd/tN;->DW(Labcd/sN;)I

    move-result v0

    iput v0, p0, Labcd/sN;->FH:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/sN;->Hw:Labcd/tN;

    invoke-interface {v0, p0}, Labcd/tN;->j6(Labcd/sN;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v5()[Labcd/rN;
    .registers 5

    iget-object v0, p0, Labcd/sN;->v5:[Labcd/rN;

    array-length v1, v0

    new-array v2, v1, [Labcd/rN;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
