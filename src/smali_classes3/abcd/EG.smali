.class Labcd/EG;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/EG$a;,
        Labcd/EG$b;
    }
.end annotation


# static fields
.field private static volatile DW:I

.field private static final j6:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Labcd/EG$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final FH:I

.field private final Hw:[Labcd/EG$b;

.field private VH:I

.field private Zo:Labcd/EG$b;

.field private v5:Labcd/EG$b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Labcd/EG;->j6:Ljava/lang/ref/SoftReference;

    new-instance v0, Labcd/vH;

    invoke-direct {v0}, Labcd/vH;-><init>()V

    invoke-static {v0}, Labcd/EG;->j6(Labcd/vH;)V

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Labcd/EG;->DW:I

    iput v0, p0, Labcd/EG;->FH:I

    const/16 v0, 0x400

    new-array v0, v0, [Labcd/EG$b;

    iput-object v0, p0, Labcd/EG;->Hw:[Labcd/EG$b;

    return-void
.end method

.method private DW()V
    .registers 4

    :goto_0
    iget v0, p0, Labcd/EG;->VH:I

    iget v1, p0, Labcd/EG;->FH:I

    if-le v0, v1, :cond_1f

    iget-object v0, p0, Labcd/EG;->Zo:Labcd/EG$b;

    if-nez v0, :cond_b

    goto :goto_1f

    :cond_b
    iget-object v1, v0, Labcd/EG$b;->j6:Labcd/EG$b;

    invoke-direct {p0, v0}, Labcd/EG;->j6(Labcd/EG$b;)V

    const/4 v2, 0x0

    iput-object v2, v0, Labcd/EG$b;->j6:Labcd/EG$b;

    iput-object v2, v0, Labcd/EG$b;->DW:Labcd/EG$b;

    if-nez v1, :cond_1a

    iput-object v2, p0, Labcd/EG;->v5:Labcd/EG$b;

    goto :goto_1c

    :cond_1a
    iput-object v2, v1, Labcd/EG$b;->DW:Labcd/EG$b;

    :goto_1c
    iput-object v1, p0, Labcd/EG;->Zo:Labcd/EG$b;

    goto :goto_0

    :cond_1f
    :goto_1f
    return-void
.end method

.method private DW(Labcd/EG$b;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/EG;->FH(Labcd/EG$b;)V

    const/4 v0, 0x0

    iput-object v0, p1, Labcd/EG$b;->j6:Labcd/EG$b;

    iget-object v0, p0, Labcd/EG;->v5:Labcd/EG$b;

    iput-object v0, p1, Labcd/EG$b;->DW:Labcd/EG$b;

    if-eqz v0, :cond_f

    iput-object p1, v0, Labcd/EG$b;->j6:Labcd/EG$b;

    goto :goto_11

    :cond_f
    iput-object p1, p0, Labcd/EG;->Zo:Labcd/EG$b;

    :goto_11
    iput-object p1, p0, Labcd/EG;->v5:Labcd/EG$b;

    return-void
.end method

.method private FH(Labcd/EG$b;)V
    .registers 3

    iget-object v0, p1, Labcd/EG$b;->j6:Labcd/EG$b;

    iget-object p1, p1, Labcd/EG$b;->DW:Labcd/EG$b;

    if-eqz v0, :cond_8

    iput-object p1, v0, Labcd/EG$b;->DW:Labcd/EG$b;

    :cond_8
    if-eqz p1, :cond_c

    iput-object v0, p1, Labcd/EG$b;->j6:Labcd/EG$b;

    :cond_c
    return-void
.end method

.method private static j6(J)I
    .registers 2

    long-to-int p1, p0

    shl-int/lit8 p0, p1, 0x16

    ushr-int/lit8 p0, p0, 0x16

    return p0
.end method

.method static synthetic j6()Ljava/lang/ref/SoftReference;
    .registers 1

    sget-object v0, Labcd/EG;->j6:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method private j6(Labcd/EG$b;)V
    .registers 4

    iget v0, p0, Labcd/EG;->VH:I

    iget v1, p1, Labcd/EG$b;->v5:I

    sub-int/2addr v0, v1

    iput v0, p0, Labcd/EG;->VH:I

    const/4 v0, 0x0

    iput-object v0, p1, Labcd/EG$b;->FH:Labcd/aH;

    sget-object v0, Labcd/EG;->j6:Ljava/lang/ref/SoftReference;

    iput-object v0, p1, Labcd/EG$b;->Zo:Ljava/lang/ref/SoftReference;

    const/4 v0, 0x0

    iput v0, p1, Labcd/EG$b;->v5:I

    return-void
.end method

.method static j6(Labcd/vH;)V
    .registers 1

    invoke-virtual {p0}, Labcd/vH;->j6()I

    move-result p0

    sput p0, Labcd/EG;->DW:I

    return-void
.end method


# virtual methods
.method j6(Labcd/aH;J)Labcd/EG$a;
    .registers 8

    iget-object v0, p0, Labcd/EG;->Hw:[Labcd/EG$b;

    invoke-static {p2, p3}, Labcd/EG;->j6(J)I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    iget-object v2, v0, Labcd/EG$b;->FH:Labcd/aH;

    if-ne v2, p1, :cond_24

    iget-wide v2, v0, Labcd/EG$b;->Hw:J

    cmp-long p1, v2, p2

    if-nez p1, :cond_24

    iget-object p1, v0, Labcd/EG$b;->Zo:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/EG$a;

    if-eqz p1, :cond_24

    invoke-direct {p0, v0}, Labcd/EG;->DW(Labcd/EG$b;)V

    return-object p1

    :cond_24
    return-object v1
.end method

.method j6(Labcd/aH;J[BI)V
    .registers 9

    array-length v0, p4

    iget v1, p0, Labcd/EG;->FH:I

    if-le v0, v1, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Labcd/EG;->Hw:[Labcd/EG$b;

    invoke-static {p2, p3}, Labcd/EG;->j6(J)I

    move-result v1

    aget-object v0, v0, v1

    if-nez v0, :cond_1f

    new-instance v0, Labcd/EG$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/EG$b;-><init>(Labcd/EG$b;)V

    iget-object v1, p0, Labcd/EG;->Hw:[Labcd/EG$b;

    invoke-static {p2, p3}, Labcd/EG;->j6(J)I

    move-result v2

    aput-object v0, v1, v2

    goto :goto_22

    :cond_1f
    invoke-direct {p0, v0}, Labcd/EG;->j6(Labcd/EG$b;)V

    :goto_22
    iget v1, p0, Labcd/EG;->VH:I

    array-length v2, p4

    add-int/2addr v1, v2

    iput v1, p0, Labcd/EG;->VH:I

    invoke-direct {p0}, Labcd/EG;->DW()V

    iput-object p1, v0, Labcd/EG$b;->FH:Labcd/aH;

    iput-wide p2, v0, Labcd/EG$b;->Hw:J

    array-length p1, p4

    iput p1, v0, Labcd/EG$b;->v5:I

    new-instance p1, Ljava/lang/ref/SoftReference;

    new-instance p2, Labcd/EG$a;

    invoke-direct {p2, p4, p5}, Labcd/EG$a;-><init>([BI)V

    invoke-direct {p1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, v0, Labcd/EG$b;->Zo:Ljava/lang/ref/SoftReference;

    invoke-direct {p0, v0}, Labcd/EG;->DW(Labcd/EG$b;)V

    return-void
.end method
