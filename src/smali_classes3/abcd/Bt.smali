.class public Labcd/Bt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Bt$a;,
        Labcd/Bt$a$a;
    }
.end annotation


# instance fields
.field private DW:I

.field private final FH:I

.field private Hw:I

.field private final Zo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Labcd/Vr;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Labcd/yt;

.field private final v5:[[Labcd/bs;


# direct methods
.method public constructor <init>(Labcd/yt;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Labcd/yt;->u7()I

    move-result v0

    iput v0, p0, Labcd/Bt;->FH:I

    iput-object p1, p0, Labcd/Bt;->j6:Labcd/yt;

    iput v0, p0, Labcd/Bt;->DW:I

    const/4 v1, 0x0

    iput v1, p0, Labcd/Bt;->Hw:I

    invoke-virtual {p1}, Labcd/yt;->DW()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [[Labcd/bs;

    iput-object v2, p0, Labcd/Bt;->v5:[[Labcd/bs;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Labcd/Bt;->Zo:Ljava/util/ArrayList;

    new-array v0, v0, [Labcd/bs;

    :goto_25
    iget v2, p0, Labcd/Bt;->FH:I

    if-ge v1, v2, :cond_34

    sget-object v2, Labcd/Qs;->tp:Labcd/Qs;

    invoke-static {v1, v2}, Labcd/bs;->j6(ILabcd/Rs;)Labcd/bs;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_34
    iget-object v1, p0, Labcd/Bt;->v5:[[Labcd/bs;

    invoke-virtual {p1}, Labcd/yt;->v5()I

    move-result p1

    aput-object v0, v1, p1

    return-void
.end method

.method public constructor <init>(Labcd/yt;I)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/Bt;-><init>(Labcd/yt;)V

    iput p2, p0, Labcd/Bt;->Hw:I

    return-void
.end method

.method static synthetic DW(Labcd/Bt;)I
    .registers 1

    iget p0, p0, Labcd/Bt;->DW:I

    return p0
.end method

.method private DW(I)Z
    .registers 3

    iget v0, p0, Labcd/Bt;->Hw:I

    if-ge p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method static synthetic DW(Labcd/Bt;I)Z
    .registers 2

    invoke-direct {p0, p1}, Labcd/Bt;->DW(I)Z

    move-result p0

    return p0
.end method

.method private static DW(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method private static DW([Labcd/bs;)[Labcd/bs;
    .registers 4

    array-length v0, p0

    new-array v0, v0, [Labcd/bs;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method static synthetic FH(Labcd/Bt;)I
    .registers 3

    iget v0, p0, Labcd/Bt;->DW:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Labcd/Bt;->DW:I

    return v0
.end method

.method private FH(I)Z
    .registers 3

    iget v0, p0, Labcd/Bt;->FH:I

    if-ge p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method static synthetic FH(Labcd/Bt;I)Z
    .registers 2

    invoke-direct {p0, p1}, Labcd/Bt;->FH(I)Z

    move-result p0

    return p0
.end method

.method static synthetic Hw(Labcd/Bt;)Labcd/yt;
    .registers 1

    iget-object p0, p0, Labcd/Bt;->j6:Labcd/yt;

    return-object p0
.end method

.method private j6(I)Labcd/Vr;
    .registers 3

    iget-object v0, p0, Labcd/Bt;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_11

    iget-object v0, p0, Labcd/Bt;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/Vr;

    return-object p1

    :cond_11
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic j6(Labcd/Bt;I)Labcd/Vr;
    .registers 2

    invoke-direct {p0, p1}, Labcd/Bt;->j6(I)Labcd/Vr;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j6(Labcd/Bt;Labcd/bs;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Bt;->j6(Labcd/bs;)V

    return-void
.end method

.method private j6(Labcd/bs;)V
    .registers 5

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v0

    invoke-virtual {p1}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object p1

    iget-object v1, p0, Labcd/Bt;->Zo:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :goto_f
    iget-object v1, p0, Labcd/Bt;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v0, :cond_1e

    iget-object v1, p0, Labcd/Bt;->Zo:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1e
    iget-object v1, p0, Labcd/Bt;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic j6(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Labcd/Bt;->DW(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic j6([Labcd/bs;)[Labcd/bs;
    .registers 1

    invoke-static {p0}, Labcd/Bt;->DW([Labcd/bs;)[Labcd/bs;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j6(Labcd/Bt;)[[Labcd/bs;
    .registers 1

    iget-object p0, p0, Labcd/Bt;->v5:[[Labcd/bs;

    return-object p0
.end method

.method static synthetic v5(Labcd/Bt;)I
    .registers 1

    iget p0, p0, Labcd/Bt;->Hw:I

    return p0
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Labcd/Bt;->j6:Labcd/yt;

    new-instance v1, Labcd/zt;

    invoke-direct {v1, p0}, Labcd/zt;-><init>(Labcd/Bt;)V

    invoke-virtual {v0, v1}, Labcd/yt;->j6(Labcd/tt$b;)V

    iget-object v0, p0, Labcd/Bt;->j6:Labcd/yt;

    iget v1, p0, Labcd/Bt;->DW:I

    invoke-virtual {v0, v1}, Labcd/yt;->v5(I)V

    iget-object v0, p0, Labcd/Bt;->j6:Labcd/yt;

    invoke-virtual {v0}, Labcd/yt;->J8()V

    return-void
.end method
