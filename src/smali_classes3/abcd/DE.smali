.class public Labcd/DE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Labcd/yE;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private DW:I

.field private FH:I

.field private Hw:[Labcd/yE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field private j6:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Labcd/DE;->Zo(I)V

    return-void
.end method

.method private DW(Labcd/yE;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iget v0, p0, Labcd/DE;->FH:I

    iget v1, p1, Labcd/YD;->FH:I

    and-int/2addr v1, v0

    iget-object v2, p0, Labcd/DE;->Hw:[Labcd/yE;

    :goto_7
    aget-object v3, v2, v1

    if-nez v3, :cond_e

    aput-object p1, v2, v1

    return-void

    :cond_e
    add-int/lit8 v1, v1, 0x1

    and-int/2addr v1, v0

    goto :goto_7
.end method

.method static synthetic DW(Labcd/DE;)[Labcd/yE;
    .registers 1

    iget-object p0, p0, Labcd/DE;->Hw:[Labcd/yE;

    return-object p0
.end method

.method private Zo(I)V
    .registers 3

    shr-int/lit8 v0, p1, 0x1

    iput v0, p0, Labcd/DE;->DW:I

    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Labcd/DE;->FH:I

    invoke-direct {p0, p1}, Labcd/DE;->v5(I)[Labcd/yE;

    move-result-object p1

    iput-object p1, p0, Labcd/DE;->Hw:[Labcd/yE;

    return-void
.end method

.method static synthetic j6(Labcd/DE;)I
    .registers 1

    iget p0, p0, Labcd/DE;->j6:I

    return p0
.end method

.method private j6()V
    .registers 5

    iget-object v0, p0, Labcd/DE;->Hw:[Labcd/yE;

    array-length v1, v0

    shl-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Labcd/DE;->Zo(I)V

    const/4 v2, 0x0

    :goto_9
    if-lt v2, v1, :cond_c

    return-void

    :cond_c
    aget-object v3, v0, v2

    if-eqz v3, :cond_13

    invoke-direct {p0, v3}, Labcd/DE;->DW(Labcd/yE;)V

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_9
.end method

.method private final v5(I)[Labcd/yE;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TV;"
        }
    .end annotation

    new-array p1, p1, [Labcd/yE;

    return-object p1
.end method


# virtual methods
.method public DW(Labcd/YD;)Labcd/yE;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/YD;",
            ")TV;"
        }
    .end annotation

    iget v0, p0, Labcd/DE;->FH:I

    iget v1, p1, Labcd/YD;->FH:I

    and-int/2addr v1, v0

    iget-object v2, p0, Labcd/DE;->Hw:[Labcd/yE;

    :goto_7
    aget-object v3, v2, v1

    if-nez v3, :cond_d

    const/4 p1, 0x0

    return-object p1

    :cond_d
    invoke-static {v3, p1}, Labcd/YD;->j6(Labcd/YD;Labcd/YD;)Z

    move-result v4

    if-eqz v4, :cond_14

    return-object v3

    :cond_14
    add-int/lit8 v1, v1, 0x1

    and-int/2addr v1, v0

    goto :goto_7
.end method

.method public isEmpty()Z
    .registers 2

    iget v0, p0, Labcd/DE;->j6:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Labcd/CE;

    invoke-direct {v0, p0}, Labcd/CE;-><init>(Labcd/DE;)V

    return-object v0
.end method

.method public j6(Labcd/yE;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Q:TV;>(TQ;)V"
        }
    .end annotation

    iget v0, p0, Labcd/DE;->j6:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/DE;->j6:I

    iget v1, p0, Labcd/DE;->DW:I

    if-ne v0, v1, :cond_d

    invoke-direct {p0}, Labcd/DE;->j6()V

    :cond_d
    invoke-direct {p0, p1}, Labcd/DE;->DW(Labcd/yE;)V

    return-void
.end method

.method public j6(Labcd/YD;)Z
    .registers 2

    invoke-virtual {p0, p1}, Labcd/DE;->DW(Labcd/YD;)Labcd/yE;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method
