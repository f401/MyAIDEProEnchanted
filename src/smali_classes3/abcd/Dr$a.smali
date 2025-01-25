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
    .registers 2

    iput-object p1, p0, Labcd/Dr$a;->Zo:Labcd/Dr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Labcd/Dr$a;->j6:I

    iput p1, p0, Labcd/Dr$a;->DW:I

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
    .registers 3

    const v0, 0x7fffffff

    if-nez p1, :cond_8

    const p1, 0x7fffffff

    :cond_8
    iput p1, p0, Labcd/Dr$a;->v5:I

    and-int/2addr p1, v0

    iget-object v0, p0, Labcd/Dr$a;->Zo:Labcd/Dr;

    invoke-static {v0}, Labcd/Dr;->j6(Labcd/Dr;)[I

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    rem-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Dr$a;->DW:I

    iget-object v0, p0, Labcd/Dr$a;->Zo:Labcd/Dr;

    invoke-static {v0}, Labcd/Dr;->j6(Labcd/Dr;)[I

    move-result-object v0

    array-length v0, v0

    rem-int/2addr p1, v0

    iput p1, p0, Labcd/Dr$a;->j6:I

    return-void
.end method

.method public j6()Z
    .registers 7

    iget v0, p0, Labcd/Dr$a;->DW:I

    const v1, 0x7fffffff

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_40

    :goto_9
    iget v0, p0, Labcd/Dr$a;->j6:I

    iget-object v4, p0, Labcd/Dr$a;->Zo:Labcd/Dr;

    invoke-static {v4}, Labcd/Dr;->j6(Labcd/Dr;)[I

    move-result-object v4

    array-length v4, v4

    if-lt v0, v4, :cond_15

    return v3

    :cond_15
    iget-object v0, p0, Labcd/Dr$a;->Zo:Labcd/Dr;

    invoke-static {v0}, Labcd/Dr;->j6(Labcd/Dr;)[I

    move-result-object v0

    iget v4, p0, Labcd/Dr$a;->j6:I

    aget v0, v0, v4

    iput v0, p0, Labcd/Dr$a;->FH:I

    if-eqz v0, :cond_3b

    const/high16 v5, -0x80000000

    if-eq v0, v5, :cond_3b

    if-ne v0, v1, :cond_2b

    iput v3, p0, Labcd/Dr$a;->FH:I

    :cond_2b
    iget-object v0, p0, Labcd/Dr$a;->Zo:Labcd/Dr;

    invoke-static {v0}, Labcd/Dr;->DW(Labcd/Dr;)[I

    move-result-object v0

    iget v1, p0, Labcd/Dr$a;->j6:I

    aget v0, v0, v1

    iput v0, p0, Labcd/Dr$a;->Hw:I

    add-int/2addr v1, v2

    :goto_38
    iput v1, p0, Labcd/Dr$a;->j6:I

    return v2

    :cond_3b
    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Labcd/Dr$a;->j6:I

    goto :goto_9

    :cond_40
    :goto_40
    iget-object v0, p0, Labcd/Dr$a;->Zo:Labcd/Dr;

    invoke-static {v0}, Labcd/Dr;->j6(Labcd/Dr;)[I

    move-result-object v0

    iget v4, p0, Labcd/Dr$a;->j6:I

    aget v0, v0, v4

    iput v0, p0, Labcd/Dr$a;->FH:I

    if-nez v0, :cond_4f

    return v3

    :cond_4f
    iget v5, p0, Labcd/Dr$a;->v5:I

    if-ne v0, v5, :cond_6f

    if-ne v0, v1, :cond_57

    iput v3, p0, Labcd/Dr$a;->FH:I

    :cond_57
    iget-object v0, p0, Labcd/Dr$a;->Zo:Labcd/Dr;

    invoke-static {v0}, Labcd/Dr;->DW(Labcd/Dr;)[I

    move-result-object v0

    iget v1, p0, Labcd/Dr$a;->j6:I

    aget v0, v0, v1

    iput v0, p0, Labcd/Dr$a;->Hw:I

    iget v0, p0, Labcd/Dr$a;->DW:I

    add-int/2addr v1, v0

    iget-object v0, p0, Labcd/Dr$a;->Zo:Labcd/Dr;

    invoke-static {v0}, Labcd/Dr;->j6(Labcd/Dr;)[I

    move-result-object v0

    array-length v0, v0

    rem-int/2addr v1, v0

    goto :goto_38

    :cond_6f
    iget v0, p0, Labcd/Dr$a;->DW:I

    add-int/2addr v4, v0

    iget-object v0, p0, Labcd/Dr$a;->Zo:Labcd/Dr;

    invoke-static {v0}, Labcd/Dr;->j6(Labcd/Dr;)[I

    move-result-object v0

    array-length v0, v0

    rem-int/2addr v4, v0

    iput v4, p0, Labcd/Dr$a;->j6:I

    goto :goto_40
.end method
