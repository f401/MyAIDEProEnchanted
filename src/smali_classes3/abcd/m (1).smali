.class public final Labcd/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final DW:[Ljava/lang/Object;

.field static FH:[Ljava/lang/Object;

.field static Hw:I

.field static Zo:I

.field private static final j6:[I

.field static v5:[Ljava/lang/Object;


# instance fields
.field EQ:Labcd/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr<",
            "TE;TE;>;"
        }
    .end annotation
.end field

.field final VH:Z

.field gn:[I

.field tp:I

.field u7:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Labcd/m;->j6:[I

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Labcd/m;->DW:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Labcd/m;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Labcd/m;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Labcd/m;->VH:Z

    if-nez p1, :cond_10

    sget-object p1, Labcd/m;->j6:[I

    iput-object p1, p0, Labcd/m;->gn:[I

    sget-object p1, Labcd/m;->DW:[Ljava/lang/Object;

    iput-object p1, p0, Labcd/m;->u7:[Ljava/lang/Object;

    goto :goto_13

    :cond_10
    invoke-direct {p0, p1}, Labcd/m;->gn(I)V

    :goto_13
    const/4 p1, 0x0

    iput p1, p0, Labcd/m;->tp:I

    return-void
.end method

.method private DW()I
    .registers 6

    iget v0, p0, Labcd/m;->tp:I

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Labcd/m;->gn:[I

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Labcd/n;->j6([III)I

    move-result v2

    if-gez v2, :cond_10

    return v2

    :cond_10
    iget-object v3, p0, Labcd/m;->u7:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-nez v3, :cond_17

    return v2

    :cond_17
    add-int/lit8 v3, v2, 0x1

    :goto_19
    if-ge v3, v0, :cond_2b

    iget-object v4, p0, Labcd/m;->gn:[I

    aget v4, v4, v3

    if-nez v4, :cond_2b

    iget-object v4, p0, Labcd/m;->u7:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-nez v4, :cond_28

    return v3

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_2b
    add-int/2addr v2, v1

    :goto_2c
    if-ltz v2, :cond_3e

    iget-object v0, p0, Labcd/m;->gn:[I

    aget v0, v0, v2

    if-nez v0, :cond_3e

    iget-object v0, p0, Labcd/m;->u7:[Ljava/lang/Object;

    aget-object v0, v0, v2

    if-nez v0, :cond_3b

    return v2

    :cond_3b
    add-int/lit8 v2, v2, -0x1

    goto :goto_2c

    :cond_3e
    xor-int/lit8 v0, v3, -0x1

    return v0
.end method

.method private gn(I)V
    .registers 6

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_32

    const-class v0, Labcd/m;

    monitor-enter v0

    :try_start_a
    sget-object v0, Labcd/m;->v5:[Ljava/lang/Object;

    if-eqz v0, :cond_29

    iput-object v0, p0, Labcd/m;->u7:[Ljava/lang/Object;

    aget-object p1, v0, v2

    check-cast p1, [Ljava/lang/Object;

    sput-object p1, Labcd/m;->v5:[Ljava/lang/Object;

    aget-object p1, v0, v3

    check-cast p1, [I

    iput-object p1, p0, Labcd/m;->gn:[I
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_2d

    aput-object v1, v0, v3

    aput-object v1, v0, v2

    :try_start_20
    sget p1, Labcd/m;->Zo:I

    sub-int/2addr p1, v3

    sput p1, Labcd/m;->Zo:I

    const-class p1, Labcd/m;

    monitor-exit p1

    return-void

    :cond_29
    const-class v0, Labcd/m;

    monitor-exit v0

    goto :goto_60

    :catchall_2d
    move-exception p1

    const-class v0, Labcd/m;

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_2d

    throw p1

    :cond_32
    const/4 v0, 0x4

    if-ne p1, v0, :cond_60

    const-class v0, Labcd/m;

    monitor-enter v0

    :try_start_38
    sget-object v0, Labcd/m;->FH:[Ljava/lang/Object;

    if-eqz v0, :cond_57

    iput-object v0, p0, Labcd/m;->u7:[Ljava/lang/Object;

    aget-object p1, v0, v2

    check-cast p1, [Ljava/lang/Object;

    sput-object p1, Labcd/m;->FH:[Ljava/lang/Object;

    aget-object p1, v0, v3

    check-cast p1, [I

    iput-object p1, p0, Labcd/m;->gn:[I
    :try_end_4a
    .catchall {:try_start_38 .. :try_end_4a} :catchall_5b

    aput-object v1, v0, v3

    aput-object v1, v0, v2

    :try_start_4e
    sget p1, Labcd/m;->Hw:I

    sub-int/2addr p1, v3

    sput p1, Labcd/m;->Hw:I

    const-class p1, Labcd/m;

    monitor-exit p1

    return-void

    :cond_57
    const-class v0, Labcd/m;

    monitor-exit v0

    goto :goto_60

    :catchall_5b
    move-exception p1

    const-class v0, Labcd/m;

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_4e .. :try_end_5f} :catchall_5b

    throw p1

    :cond_60
    :goto_60
    new-array v0, p1, [I

    iput-object v0, p0, Labcd/m;->gn:[I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Labcd/m;->u7:[Ljava/lang/Object;

    return-void
.end method

.method private j6(Ljava/lang/Object;I)I
    .registers 8

    iget v0, p0, Labcd/m;->tp:I

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Labcd/m;->gn:[I

    invoke-static {v2, v0, p2}, Labcd/n;->j6([III)I

    move-result v2

    if-gez v2, :cond_f

    return v2

    :cond_f
    iget-object v3, p0, Labcd/m;->u7:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    return v2

    :cond_1a
    add-int/lit8 v3, v2, 0x1

    :goto_1c
    if-ge v3, v0, :cond_32

    iget-object v4, p0, Labcd/m;->gn:[I

    aget v4, v4, v3

    if-ne v4, p2, :cond_32

    iget-object v4, p0, Labcd/m;->u7:[Ljava/lang/Object;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    return v3

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_32
    add-int/2addr v2, v1

    :goto_33
    if-ltz v2, :cond_49

    iget-object v0, p0, Labcd/m;->gn:[I

    aget v0, v0, v2

    if-ne v0, p2, :cond_49

    iget-object v0, p0, Labcd/m;->u7:[Ljava/lang/Object;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    return v2

    :cond_46
    add-int/lit8 v2, v2, -0x1

    goto :goto_33

    :cond_49
    xor-int/lit8 p1, v3, -0x1

    return p1
.end method

.method private j6()Labcd/r;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr<",
            "TE;TE;>;"
        }
    .end annotation

    iget-object v0, p0, Labcd/m;->EQ:Labcd/r;

    if-nez v0, :cond_b

    new-instance v0, Labcd/l;

    invoke-direct {v0, p0}, Labcd/l;-><init>(Labcd/m;)V

    iput-object v0, p0, Labcd/m;->EQ:Labcd/r;

    :cond_b
    iget-object v0, p0, Labcd/m;->EQ:Labcd/r;

    return-object v0
.end method

.method private static j6([I[Ljava/lang/Object;I)V
    .registers 10

    array-length v0, p0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x1

    if-ne v0, v1, :cond_2f

    const-class v0, Labcd/m;

    monitor-enter v0

    :try_start_e
    sget v0, Labcd/m;->Zo:I

    if-ge v0, v5, :cond_26

    sget-object v0, Labcd/m;->v5:[Ljava/lang/Object;

    aput-object v0, p1, v4
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_2a

    aput-object p0, p1, v6

    :goto_18
    add-int/lit8 p2, p2, -0x1

    if-lt p2, v3, :cond_1f

    aput-object v2, p1, p2

    goto :goto_18

    :cond_1f
    :try_start_1f
    sput-object p1, Labcd/m;->v5:[Ljava/lang/Object;

    sget p0, Labcd/m;->Zo:I

    add-int/2addr p0, v6

    sput p0, Labcd/m;->Zo:I

    :cond_26
    const-class p0, Labcd/m;

    monitor-exit p0

    goto :goto_57

    :catchall_2a
    move-exception p0

    const-class p1, Labcd/m;

    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_2a

    throw p0

    :cond_2f
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_57

    const-class v0, Labcd/m;

    monitor-enter v0

    :try_start_36
    sget v0, Labcd/m;->Hw:I

    if-ge v0, v5, :cond_4e

    sget-object v0, Labcd/m;->FH:[Ljava/lang/Object;

    aput-object v0, p1, v4
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_52

    aput-object p0, p1, v6

    :goto_40
    add-int/lit8 p2, p2, -0x1

    if-lt p2, v3, :cond_47

    aput-object v2, p1, p2

    goto :goto_40

    :cond_47
    :try_start_47
    sput-object p1, Labcd/m;->FH:[Ljava/lang/Object;

    sget p0, Labcd/m;->Hw:I

    add-int/2addr p0, v6

    sput p0, Labcd/m;->Hw:I

    :cond_4e
    const-class p0, Labcd/m;

    monitor-exit p0

    goto :goto_57

    :catchall_52
    move-exception p0

    const-class p1, Labcd/m;

    monitor-exit p1
    :try_end_56
    .catchall {:try_start_47 .. :try_end_56} :catchall_52

    throw p0

    :cond_57
    :goto_57
    return-void
.end method


# virtual methods
.method public VH(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Labcd/m;->u7:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public Zo(I)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Labcd/m;->u7:[Ljava/lang/Object;

    aget-object v1, v0, p1

    iget v2, p0, Labcd/m;->tp:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v2, v4, :cond_1a

    iget-object p1, p0, Labcd/m;->gn:[I

    invoke-static {p1, v0, v2}, Labcd/m;->j6([I[Ljava/lang/Object;I)V

    sget-object p1, Labcd/m;->j6:[I

    iput-object p1, p0, Labcd/m;->gn:[I

    sget-object p1, Labcd/m;->DW:[Ljava/lang/Object;

    iput-object p1, p0, Labcd/m;->u7:[Ljava/lang/Object;

    iput v3, p0, Labcd/m;->tp:I

    goto :goto_6f

    :cond_1a
    iget-object v5, p0, Labcd/m;->gn:[I

    array-length v6, v5

    const/16 v7, 0x8

    if-le v6, v7, :cond_55

    array-length v6, v5

    div-int/lit8 v6, v6, 0x3

    if-ge v2, v6, :cond_55

    if-le v2, v7, :cond_2c

    shr-int/lit8 v6, v2, 0x1

    add-int v7, v2, v6

    :cond_2c
    invoke-direct {p0, v7}, Labcd/m;->gn(I)V

    iget v2, p0, Labcd/m;->tp:I

    sub-int/2addr v2, v4

    iput v2, p0, Labcd/m;->tp:I

    if-lez p1, :cond_40

    iget-object v2, p0, Labcd/m;->gn:[I

    invoke-static {v5, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Labcd/m;->u7:[Ljava/lang/Object;

    invoke-static {v0, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_40
    iget v2, p0, Labcd/m;->tp:I

    if-ge p1, v2, :cond_6f

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Labcd/m;->gn:[I

    sub-int/2addr v2, p1

    invoke-static {v5, v3, v4, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Labcd/m;->u7:[Ljava/lang/Object;

    iget v4, p0, Labcd/m;->tp:I

    sub-int/2addr v4, p1

    invoke-static {v0, v3, v2, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6f

    :cond_55
    sub-int/2addr v2, v4

    iput v2, p0, Labcd/m;->tp:I

    if-ge p1, v2, :cond_68

    add-int/lit8 v0, p1, 0x1

    sub-int/2addr v2, p1

    invoke-static {v5, v0, v5, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Labcd/m;->u7:[Ljava/lang/Object;

    iget v3, p0, Labcd/m;->tp:I

    sub-int/2addr v3, p1

    invoke-static {v2, v0, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_68
    iget-object p1, p0, Labcd/m;->u7:[Ljava/lang/Object;

    iget v0, p0, Labcd/m;->tp:I

    const/4 v2, 0x0

    aput-object v2, p1, v0

    :cond_6f
    :goto_6f
    return-object v1
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_9

    invoke-direct {p0}, Labcd/m;->DW()I

    move-result v1

    const/4 v2, 0x0

    goto :goto_1d

    :cond_9
    iget-boolean v1, p0, Labcd/m;->VH:Z

    if-eqz v1, :cond_12

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    goto :goto_16

    :cond_12
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_16
    invoke-direct {p0, p1, v1}, Labcd/m;->j6(Ljava/lang/Object;I)I

    move-result v2

    move v7, v2

    move v2, v1

    move v1, v7

    :goto_1d
    if-ltz v1, :cond_20

    return v0

    :cond_20
    xor-int/lit8 v1, v1, -0x1

    iget v3, p0, Labcd/m;->tp:I

    iget-object v4, p0, Labcd/m;->gn:[I

    array-length v5, v4

    if-lt v3, v5, :cond_4f

    const/16 v5, 0x8

    if-lt v3, v5, :cond_31

    shr-int/lit8 v5, v3, 0x1

    add-int/2addr v5, v3

    goto :goto_36

    :cond_31
    const/4 v6, 0x4

    if-lt v3, v6, :cond_35

    goto :goto_36

    :cond_35
    const/4 v5, 0x4

    :goto_36
    iget-object v3, p0, Labcd/m;->u7:[Ljava/lang/Object;

    invoke-direct {p0, v5}, Labcd/m;->gn(I)V

    iget-object v5, p0, Labcd/m;->gn:[I

    array-length v6, v5

    if-lez v6, :cond_4a

    array-length v6, v4

    invoke-static {v4, v0, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Labcd/m;->u7:[Ljava/lang/Object;

    array-length v6, v3

    invoke-static {v3, v0, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4a
    iget v0, p0, Labcd/m;->tp:I

    invoke-static {v4, v3, v0}, Labcd/m;->j6([I[Ljava/lang/Object;I)V

    :cond_4f
    iget v0, p0, Labcd/m;->tp:I

    if-ge v1, v0, :cond_63

    iget-object v3, p0, Labcd/m;->gn:[I

    add-int/lit8 v4, v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v3, v1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Labcd/m;->u7:[Ljava/lang/Object;

    iget v3, p0, Labcd/m;->tp:I

    sub-int/2addr v3, v1

    invoke-static {v0, v1, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_63
    iget-object v0, p0, Labcd/m;->gn:[I

    aput v2, v0, v1

    iget-object v0, p0, Labcd/m;->u7:[Ljava/lang/Object;

    aput-object p1, v0, v1

    iget p1, p0, Labcd/m;->tp:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Labcd/m;->tp:I

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    iget v0, p0, Labcd/m;->tp:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Labcd/m;->v5(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Labcd/m;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_f

    :cond_1f
    return v0
.end method

.method public clear()V
    .registers 4

    iget v0, p0, Labcd/m;->tp:I

    if-eqz v0, :cond_16

    iget-object v1, p0, Labcd/m;->gn:[I

    iget-object v2, p0, Labcd/m;->u7:[Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Labcd/m;->j6([I[Ljava/lang/Object;I)V

    sget-object v0, Labcd/m;->j6:[I

    iput-object v0, p0, Labcd/m;->gn:[I

    sget-object v0, Labcd/m;->DW:[Ljava/lang/Object;

    iput-object v0, p0, Labcd/m;->u7:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Labcd/m;->tp:I

    :cond_16
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0, p1}, Labcd/m;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/m;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_16
    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0}, Labcd/m;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v1, v3, :cond_16

    return v2

    :cond_16
    const/4 v1, 0x0

    :goto_17
    :try_start_17
    iget v3, p0, Labcd/m;->tp:I

    if-ge v1, v3, :cond_29

    invoke-virtual {p0, v1}, Labcd/m;->VH(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_23
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_23} :catch_2c
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_23} :catch_2a

    if-nez v3, :cond_26

    return v2

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_29
    return v0

    :catch_2a
    move-exception p1

    goto :goto_2d

    :catch_2c
    move-exception p1

    :cond_2d
    :goto_2d
    return v2
.end method

.method public hashCode()I
    .registers 6

    iget-object v0, p0, Labcd/m;->gn:[I

    iget v1, p0, Labcd/m;->tp:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v2, v1, :cond_e

    aget v4, v0, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_e
    return v3
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3

    if-nez p1, :cond_7

    invoke-direct {p0}, Labcd/m;->DW()I

    move-result p1

    goto :goto_18

    :cond_7
    iget-boolean v0, p0, Labcd/m;->VH:Z

    if-eqz v0, :cond_10

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    goto :goto_14

    :cond_10
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_14
    invoke-direct {p0, p1, v0}, Labcd/m;->j6(Ljava/lang/Object;I)I

    move-result p1

    :goto_18
    return p1
.end method

.method public isEmpty()Z
    .registers 2

    iget v0, p0, Labcd/m;->tp:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    invoke-direct {p0}, Labcd/m;->j6()Labcd/r;

    move-result-object v0

    invoke-virtual {v0}, Labcd/r;->v5()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0, p1}, Labcd/m;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_b

    invoke-virtual {p0, p1}, Labcd/m;->Zo(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Labcd/m;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_5

    :cond_15
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget v0, p0, Labcd/m;->tp:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_5
    if-ltz v0, :cond_18

    iget-object v3, p0, Labcd/m;->u7:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {p0, v0}, Labcd/m;->Zo(I)Ljava/lang/Object;

    const/4 v2, 0x1

    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_18
    return v2
.end method

.method public size()I
    .registers 2

    iget v0, p0, Labcd/m;->tp:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 5

    iget v0, p0, Labcd/m;->tp:I

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Labcd/m;->u7:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    array-length v0, p1

    iget v1, p0, Labcd/m;->tp:I

    if-ge v0, v1, :cond_15

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    iget v0, p0, Labcd/m;->tp:I

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_15
    iget-object v0, p0, Labcd/m;->u7:[Ljava/lang/Object;

    iget v1, p0, Labcd/m;->tp:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    iget v1, p0, Labcd/m;->tp:I

    if-le v0, v1, :cond_25

    const/4 v0, 0x0

    aput-object v0, p1, v1

    :cond_25
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Labcd/m;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "{}"

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Labcd/m;->tp:I

    mul-int/lit8 v1, v1, 0xe

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_18
    iget v2, p0, Labcd/m;->tp:I

    if-ge v1, v2, :cond_35

    if-lez v1, :cond_23

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    invoke-virtual {p0, v1}, Labcd/m;->VH(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_2d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_2d
    const-string v2, "(this Set)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_35
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v5(I)V
    .registers 6

    iget-object v0, p0, Labcd/m;->gn:[I

    array-length v1, v0

    if-ge v1, p1, :cond_20

    iget-object v1, p0, Labcd/m;->u7:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Labcd/m;->gn(I)V

    iget p1, p0, Labcd/m;->tp:I

    if-lez p1, :cond_1b

    iget-object v2, p0, Labcd/m;->gn:[I

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Labcd/m;->u7:[Ljava/lang/Object;

    iget v2, p0, Labcd/m;->tp:I

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1b
    iget p1, p0, Labcd/m;->tp:I

    invoke-static {v0, v1, p1}, Labcd/m;->j6([I[Ljava/lang/Object;I)V

    :cond_20
    return-void
.end method
