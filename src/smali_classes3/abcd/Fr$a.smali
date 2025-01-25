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
    .registers 2

    iput-object p1, p0, Labcd/Fr$a;->FH:Labcd/Fr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Labcd/Fr$a;->j6:I

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
    .registers 5

    :cond_0
    iget v0, p0, Labcd/Fr$a;->j6:I

    iget-object v1, p0, Labcd/Fr$a;->FH:Labcd/Fr;

    invoke-static {v1}, Labcd/Fr;->j6(Labcd/Fr;)[I

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_d

    return v2

    :cond_d
    iget-object v0, p0, Labcd/Fr$a;->FH:Labcd/Fr;

    invoke-static {v0}, Labcd/Fr;->j6(Labcd/Fr;)[I

    move-result-object v0

    iget v1, p0, Labcd/Fr$a;->j6:I

    aget v0, v0, v1

    iput v0, p0, Labcd/Fr$a;->DW:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, p0, Labcd/Fr$a;->j6:I

    if-eqz v0, :cond_0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_2a

    iput v2, p0, Labcd/Fr$a;->DW:I

    :cond_2a
    return v3
.end method
