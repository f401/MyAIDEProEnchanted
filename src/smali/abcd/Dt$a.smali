.class Labcd/Dt$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Dt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final DW:[I

.field private FH:I

.field private final j6:[I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [I

    iput-object v0, p0, Labcd/Dt$a;->j6:[I

    new-array v0, p1, [I

    iput-object v0, p0, Labcd/Dt$a;->DW:[I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Dt$a;->FH:I

    return-void
.end method


# virtual methods
.method public DW()I
    .registers 2

    iget v0, p0, Labcd/Dt$a;->FH:I

    return v0
.end method

.method public j6()I
    .registers 8

    const/4 v1, -0x1

    const/4 v4, 0x0

    move v0, v1

    move v2, v1

    move v3, v4

    move v5, v4

    :goto_0
    iget v1, p0, Labcd/Dt$a;->FH:I

    if-ge v5, v1, :cond_0

    iget-object v6, p0, Labcd/Dt$a;->DW:[I

    aget v1, v6, v5

    if-ge v3, v1, :cond_1

    iget-object v0, p0, Labcd/Dt$a;->j6:[I

    aget v1, v0, v5

    aget v3, v6, v5

    move v0, v5

    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Labcd/Dt$a;->DW:[I

    aput v4, v1, v0

    return v2

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public j6(I)V
    .registers 5

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Labcd/Dt$a;->FH:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Labcd/Dt$a;->j6:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Labcd/Dt$a;->DW:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Labcd/Dt$a;->j6:[I

    aput p1, v0, v1

    iget-object v0, p0, Labcd/Dt$a;->DW:[I

    const/4 v2, 0x1

    aput v2, v0, v1

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Labcd/Dt$a;->FH:I

    goto :goto_1
.end method
