.class public Labcd/Fr$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Fr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private DW:I

.field final FH:Labcd/Fr;

.field private j6:I


# direct methods
.method private constructor <init>(Labcd/Fr;)V
    .registers 3

    iput-object p1, p0, Labcd/Fr$a;->FH:Labcd/Fr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Labcd/Fr$a;->j6:I

    return-void
.end method

.method synthetic constructor <init>(Labcd/Fr;Labcd/Er;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/Fr$a;-><init>(Labcd/Fr;)V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Labcd/Fr$a;->j6:I

    return-void
.end method

.method public FH()I
    .registers 2

    iget v0, p0, Labcd/Fr$a;->DW:I

    return v0
.end method

.method public j6()Z
    .registers 4

    const/4 v0, 0x0

    :cond_0
    iget v1, p0, Labcd/Fr$a;->j6:I

    iget-object v2, p0, Labcd/Fr$a;->FH:Labcd/Fr;

    invoke-static {v2}, Labcd/Fr;->j6(Labcd/Fr;)[I

    move-result-object v2

    array-length v2, v2

    if-lt v1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Labcd/Fr$a;->FH:Labcd/Fr;

    invoke-static {v1}, Labcd/Fr;->j6(Labcd/Fr;)[I

    move-result-object v1

    iget v2, p0, Labcd/Fr$a;->j6:I

    aget v1, v1, v2

    iput v1, p0, Labcd/Fr$a;->DW:I

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Labcd/Fr$a;->j6:I

    iget v1, p0, Labcd/Fr$a;->DW:I

    if-eqz v1, :cond_0

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2

    iput v0, p0, Labcd/Fr$a;->DW:I

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
