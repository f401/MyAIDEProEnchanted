.class public Labcd/Dr$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Dr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private DW:I

.field private FH:I

.field private Hw:I

.field final Zo:Labcd/Dr;

.field private j6:I

.field private v5:I


# direct methods
.method private constructor <init>(Labcd/Dr;)V
    .registers 3

    const/4 v0, 0x0

    iput-object p1, p0, Labcd/Dr$a;->Zo:Labcd/Dr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Labcd/Dr$a;->j6:I

    iput v0, p0, Labcd/Dr$a;->DW:I

    return-void
.end method

.method synthetic constructor <init>(Labcd/Dr;Labcd/Cr;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/Dr$a;-><init>(Labcd/Dr;)V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Labcd/Dr$a;->j6:I

    iput v0, p0, Labcd/Dr$a;->DW:I

    return-void
.end method

.method public FH()I
    .registers 2

    iget v0, p0, Labcd/Dr$a;->FH:I

    return v0
.end method

.method public Hw()I
    .registers 2

    iget v0, p0, Labcd/Dr$a;->Hw:I

    return v0
.end method

.method public j6(I)V
    .registers 4

    const v0, 0x7fffffff

    if-nez p1, :cond_0

    move p1, v0

    :cond_0
    iput p1, p0, Labcd/Dr$a;->v5:I

    and-int/2addr v0, p1

    iget-object v1, p0, Labcd/Dr$a;->Zo:Labcd/Dr;

    invoke-static {v1}, Labcd/Dr;->j6(Labcd/Dr;)[I

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    rem-int v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/Dr$a;->DW:I

    iget-object v1, p0, Labcd/Dr$a;->Zo:Labcd/Dr;

    invoke-static {v1}, Labcd/Dr;->j6(Labcd/Dr;)[I

    move-result-object v1

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Labcd/Dr$a;->j6:I

    return-void
.end method

.method public j6()Z
    .registers 7

    const v5, 0x7fffffff

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Labcd/Dr$a;->DW:I

    if-nez v2, :cond_5

    :goto_0
    iget v2, p0, Labcd/Dr$a;->j6:I

    iget-object v3, p0, Labcd/Dr$a;->Zo:Labcd/Dr;

    invoke-static {v3}, Labcd/Dr;->j6(Labcd/Dr;)[I

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    iget-object v2, p0, Labcd/Dr$a;->Zo:Labcd/Dr;

    invoke-static {v2}, Labcd/Dr;->j6(Labcd/Dr;)[I

    move-result-object v2

    iget v3, p0, Labcd/Dr$a;->j6:I

    aget v2, v2, v3

    iput v2, p0, Labcd/Dr$a;->FH:I

    iget v2, p0, Labcd/Dr$a;->FH:I

    if-eqz v2, :cond_3

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_3

    if-ne v2, v5, :cond_2

    iput v0, p0, Labcd/Dr$a;->FH:I

    :cond_2
    iget-object v0, p0, Labcd/Dr$a;->Zo:Labcd/Dr;

    invoke-static {v0}, Labcd/Dr;->DW(Labcd/Dr;)[I

    move-result-object v0

    iget v2, p0, Labcd/Dr$a;->j6:I

    aget v0, v0, v2

    iput v0, p0, Labcd/Dr$a;->Hw:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Labcd/Dr$a;->j6:I

    move v0, v1

    goto :goto_1

    :cond_3
    iget v2, p0, Labcd/Dr$a;->j6:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Labcd/Dr$a;->j6:I

    goto :goto_0

    :cond_4
    iget v2, p0, Labcd/Dr$a;->DW:I

    add-int/2addr v2, v3

    iget-object v3, p0, Labcd/Dr$a;->Zo:Labcd/Dr;

    invoke-static {v3}, Labcd/Dr;->j6(Labcd/Dr;)[I

    move-result-object v3

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Labcd/Dr$a;->j6:I

    :cond_5
    iget-object v2, p0, Labcd/Dr$a;->Zo:Labcd/Dr;

    invoke-static {v2}, Labcd/Dr;->j6(Labcd/Dr;)[I

    move-result-object v2

    iget v3, p0, Labcd/Dr$a;->j6:I

    aget v2, v2, v3

    iput v2, p0, Labcd/Dr$a;->FH:I

    iget v2, p0, Labcd/Dr$a;->FH:I

    if-eqz v2, :cond_0

    iget v4, p0, Labcd/Dr$a;->v5:I

    if-ne v2, v4, :cond_4

    if-ne v2, v5, :cond_6

    iput v0, p0, Labcd/Dr$a;->FH:I

    :cond_6
    iget-object v0, p0, Labcd/Dr$a;->Zo:Labcd/Dr;

    invoke-static {v0}, Labcd/Dr;->DW(Labcd/Dr;)[I

    move-result-object v0

    iget v2, p0, Labcd/Dr$a;->j6:I

    aget v0, v0, v2

    iput v0, p0, Labcd/Dr$a;->Hw:I

    iget v0, p0, Labcd/Dr$a;->DW:I

    add-int/2addr v0, v2

    iget-object v2, p0, Labcd/Dr$a;->Zo:Labcd/Dr;

    invoke-static {v2}, Labcd/Dr;->j6(Labcd/Dr;)[I

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v0, v2

    iput v0, p0, Labcd/Dr$a;->j6:I

    move v0, v1

    goto :goto_1
.end method
