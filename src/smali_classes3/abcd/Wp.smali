.class public Labcd/Wp;
.super Ljava/lang/Object;


# instance fields
.field private final DW:[I

.field private final FH:[I

.field private final Hw:[I

.field private final VH:[I

.field private final Zo:[I

.field private final j6:I

.field private final v5:[I


# direct methods
.method public constructor <init>(I[I[I[I[I[I[I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Labcd/Wp;->j6:I

    iput-object p2, p0, Labcd/Wp;->DW:[I

    iput-object p3, p0, Labcd/Wp;->FH:[I

    iput-object p4, p0, Labcd/Wp;->Hw:[I

    iput-object p5, p0, Labcd/Wp;->v5:[I

    iput-object p6, p0, Labcd/Wp;->Zo:[I

    iput-object p7, p0, Labcd/Wp;->VH:[I

    return-void
.end method


# virtual methods
.method public DW()[I
    .registers 2

    iget-object v0, p0, Labcd/Wp;->FH:[I

    return-object v0
.end method

.method public FH()[I
    .registers 2

    iget-object v0, p0, Labcd/Wp;->DW:[I

    return-object v0
.end method

.method public Hw()[I
    .registers 2

    iget-object v0, p0, Labcd/Wp;->v5:[I

    return-object v0
.end method

.method public VH()[I
    .registers 2

    iget-object v0, p0, Labcd/Wp;->Zo:[I

    return-object v0
.end method

.method public Zo()[I
    .registers 2

    iget-object v0, p0, Labcd/Wp;->VH:[I

    return-object v0
.end method

.method public j6()I
    .registers 2

    iget v0, p0, Labcd/Wp;->j6:I

    return v0
.end method

.method public j6(Labcd/hr$a;)V
    .registers 6

    iget v0, p0, Labcd/Wp;->j6:I

    invoke-virtual {p1, v0}, Labcd/hr$a;->writeInt(I)V

    iget-object v0, p0, Labcd/Wp;->DW:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Labcd/hr$a;->writeInt(I)V

    iget-object v0, p0, Labcd/Wp;->Hw:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Labcd/hr$a;->writeInt(I)V

    iget-object v0, p0, Labcd/Wp;->Zo:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Labcd/hr$a;->writeInt(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_19
    iget-object v2, p0, Labcd/Wp;->DW:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2d

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Labcd/hr$a;->writeInt(I)V

    iget-object v2, p0, Labcd/Wp;->FH:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Labcd/hr$a;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    iget-object v2, p0, Labcd/Wp;->Hw:[I

    array-length v3, v2

    if-ge v1, v3, :cond_42

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Labcd/hr$a;->writeInt(I)V

    iget-object v2, p0, Labcd/Wp;->v5:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Labcd/hr$a;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_42
    :goto_42
    iget-object v1, p0, Labcd/Wp;->Zo:[I

    array-length v2, v1

    if-ge v0, v2, :cond_56

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Labcd/hr$a;->writeInt(I)V

    iget-object v1, p0, Labcd/Wp;->VH:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Labcd/hr$a;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_56
    return-void
.end method

.method public v5()[I
    .registers 2

    iget-object v0, p0, Labcd/Wp;->Hw:[I

    return-object v0
.end method
