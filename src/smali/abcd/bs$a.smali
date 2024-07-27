.class Labcd/bs$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/bs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private DW:Labcd/Rs;

.field private FH:Labcd/Vr;

.field private j6:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Labcd/as;)V
    .registers 2

    invoke-direct {p0}, Labcd/bs$a;-><init>()V

    return-void
.end method

.method static synthetic DW(Labcd/bs$a;)Labcd/Rs;
    .registers 2

    iget-object v0, p0, Labcd/bs$a;->DW:Labcd/Rs;

    return-object v0
.end method

.method static synthetic FH(Labcd/bs$a;)Labcd/Vr;
    .registers 2

    iget-object v0, p0, Labcd/bs$a;->FH:Labcd/Vr;

    return-object v0
.end method

.method static synthetic j6(Labcd/bs$a;)I
    .registers 2

    iget v0, p0, Labcd/bs$a;->j6:I

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Labcd/bs;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Labcd/bs;

    iget v0, p0, Labcd/bs$a;->j6:I

    iget-object v1, p0, Labcd/bs$a;->DW:Labcd/Rs;

    iget-object v2, p0, Labcd/bs$a;->FH:Labcd/Vr;

    invoke-static {p1, v0, v1, v2}, Labcd/bs;->j6(Labcd/bs;ILabcd/Rs;Labcd/Vr;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Labcd/bs$a;->j6:I

    iget-object v1, p0, Labcd/bs$a;->DW:Labcd/Rs;

    iget-object v2, p0, Labcd/bs$a;->FH:Labcd/Vr;

    invoke-static {v0, v1, v2}, Labcd/bs;->j6(ILabcd/Rs;Labcd/Vr;)I

    move-result v0

    return v0
.end method

.method public j6()Labcd/bs;
    .registers 6

    new-instance v0, Labcd/bs;

    iget v1, p0, Labcd/bs$a;->j6:I

    iget-object v2, p0, Labcd/bs$a;->DW:Labcd/Rs;

    iget-object v3, p0, Labcd/bs$a;->FH:Labcd/Vr;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Labcd/bs;-><init>(ILabcd/Rs;Labcd/Vr;Labcd/as;)V

    return-object v0
.end method

.method public j6(ILabcd/Rs;Labcd/Vr;)V
    .registers 4

    iput p1, p0, Labcd/bs$a;->j6:I

    iput-object p2, p0, Labcd/bs$a;->DW:Labcd/Rs;

    iput-object p3, p0, Labcd/bs$a;->FH:Labcd/Vr;

    return-void
.end method
