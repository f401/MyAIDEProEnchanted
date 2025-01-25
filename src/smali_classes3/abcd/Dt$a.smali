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

    new-array p1, p1, [I

    iput-object p1, p0, Labcd/Dt$a;->DW:[I

    const/4 p1, 0x0

    iput p1, p0, Labcd/Dt$a;->FH:I

    return-void
.end method


# virtual methods
.method public DW()I
    .registers 2

    iget v0, p0, Labcd/Dt$a;->FH:I

    return v0
.end method

.method public j6()I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_5
    iget v5, p0, Labcd/Dt$a;->FH:I

    if-ge v3, v5, :cond_19

    iget-object v5, p0, Labcd/Dt$a;->DW:[I

    aget v5, v5, v3

    if-ge v4, v5, :cond_16

    iget-object v1, p0, Labcd/Dt$a;->j6:[I

    aget v1, v1, v3

    move v2, v1

    move v1, v3

    move v4, v5

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_19
    iget-object v3, p0, Labcd/Dt$a;->DW:[I

    aput v0, v3, v1

    return v2
.end method

.method public j6(I)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Labcd/Dt$a;->FH:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Labcd/Dt$a;->j6:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_14

    iget-object p1, p0, Labcd/Dt$a;->DW:[I

    aget v1, p1, v0

    add-int/2addr v1, v2

    aput v1, p1, v0

    return-void

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    iget-object v0, p0, Labcd/Dt$a;->j6:[I

    aput p1, v0, v1

    iget-object p1, p0, Labcd/Dt$a;->DW:[I

    aput v2, p1, v1

    add-int/2addr v1, v2

    iput v1, p0, Labcd/Dt$a;->FH:I

    return-void
.end method
