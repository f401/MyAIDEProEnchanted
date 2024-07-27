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
    .registers 7

    invoke-direct {p0}, Labcd/yL;-><init>()V

    iput-object p1, p0, Labcd/sN;->Hw:Labcd/tN;

    invoke-virtual {p2}, Labcd/FL;->tp()I

    move-result v0

    new-array v0, v0, [Labcd/rN;

    iput-object v0, p0, Labcd/sN;->v5:[Labcd/rN;

    invoke-virtual {p2}, Labcd/FL;->u7()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Labcd/sN;->v5:[Labcd/rN;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Labcd/rN;->j6(Ljava/lang/Object;)Labcd/rN;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static j6(Ljava/lang/Object;)Labcd/sN;
    .registers 3

    instance-of v0, p0, Labcd/sN;

    if-eqz v0, :cond_0

    check-cast p0, Labcd/sN;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Labcd/sN;

    invoke-static {p0}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/sN;-><init>(Labcd/FL;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
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

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Labcd/sN;

    if-nez v0, :cond_1

    instance-of v0, p1, Labcd/FL;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Labcd/qL;

    invoke-interface {v0}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v0

    invoke-virtual {p0}, Labcd/sN;->DW()Labcd/EL;

    move-result-object v3

    invoke-virtual {v3, v0}, Labcd/EL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Labcd/sN;->Hw:Labcd/tN;

    new-instance v1, Labcd/sN;

    check-cast p1, Labcd/qL;

    invoke-interface {p1}, Labcd/qL;->DW()Labcd/EL;

    move-result-object v3

    invoke-static {v3}, Labcd/FL;->j6(Ljava/lang/Object;)Labcd/FL;

    move-result-object v3

    invoke-direct {v1, v3}, Labcd/sN;-><init>(Labcd/FL;)V

    invoke-interface {v0, p0, v1}, Labcd/tN;->j6(Labcd/sN;Labcd/sN;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .registers 2

    iget-boolean v0, p0, Labcd/sN;->DW:Z

    if-eqz v0, :cond_0

    iget v0, p0, Labcd/sN;->FH:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/sN;->DW:Z

    iget-object v0, p0, Labcd/sN;->Hw:Labcd/tN;

    invoke-interface {v0, p0}, Labcd/tN;->DW(Labcd/sN;)I

    move-result v0

    iput v0, p0, Labcd/sN;->FH:I

    iget v0, p0, Labcd/sN;->FH:I

    goto :goto_0
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

    const/4 v3, 0x0

    iget-object v0, p0, Labcd/sN;->v5:[Labcd/rN;

    array-length v1, v0

    new-array v1, v1, [Labcd/rN;

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
