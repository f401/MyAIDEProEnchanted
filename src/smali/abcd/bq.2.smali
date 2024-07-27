.class public final Labcd/bq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/bq$a;,
        Labcd/bq$b;
    }
.end annotation


# instance fields
.field private final DW:I

.field private final FH:I

.field private final Hw:I

.field private final VH:[Labcd/bq$a;

.field private final Zo:[Labcd/bq$b;

.field private final j6:I

.field private final v5:[S


# direct methods
.method public constructor <init>(IIII[S[Labcd/bq$b;[Labcd/bq$a;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Labcd/bq;->j6:I

    iput p2, p0, Labcd/bq;->DW:I

    iput p3, p0, Labcd/bq;->FH:I

    iput p4, p0, Labcd/bq;->Hw:I

    iput-object p5, p0, Labcd/bq;->v5:[S

    iput-object p6, p0, Labcd/bq;->Zo:[Labcd/bq$b;

    iput-object p7, p0, Labcd/bq;->VH:[Labcd/bq$a;

    return-void
.end method


# virtual methods
.method public DW()I
    .registers 2

    iget v0, p0, Labcd/bq;->Hw:I

    return v0
.end method

.method public FH()I
    .registers 2

    iget v0, p0, Labcd/bq;->DW:I

    return v0
.end method

.method public Hw()[S
    .registers 2

    iget-object v0, p0, Labcd/bq;->v5:[S

    return-object v0
.end method

.method public VH()[Labcd/bq$b;
    .registers 2

    iget-object v0, p0, Labcd/bq;->Zo:[Labcd/bq$b;

    return-object v0
.end method

.method public Zo()I
    .registers 2

    iget v0, p0, Labcd/bq;->j6:I

    return v0
.end method

.method public j6()[Labcd/bq$a;
    .registers 2

    iget-object v0, p0, Labcd/bq;->VH:[Labcd/bq$a;

    return-object v0
.end method

.method public v5()I
    .registers 2

    iget v0, p0, Labcd/bq;->FH:I

    return v0
.end method
