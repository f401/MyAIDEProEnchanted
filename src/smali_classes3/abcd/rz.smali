.class public Labcd/rz;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Labcd/nz;

.field private final FH:Labcd/qz;

.field private final j6:I


# direct methods
.method public constructor <init>(ILabcd/nz;Labcd/qz;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Labcd/rz;->j6:I

    iput-object p2, p0, Labcd/rz;->DW:Labcd/nz;

    iput-object p3, p0, Labcd/rz;->FH:Labcd/qz;

    return-void
.end method

.method public constructor <init>(Labcd/nz;Labcd/qz;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Labcd/rz;-><init>(ILabcd/nz;Labcd/qz;)V

    return-void
.end method


# virtual methods
.method public DW()Labcd/rz;
    .registers 4

    new-instance v0, Labcd/rz;

    iget-object v1, p0, Labcd/rz;->DW:Labcd/nz;

    iget-object v2, p0, Labcd/rz;->FH:Labcd/qz;

    invoke-direct {v0, v1, v2}, Labcd/rz;-><init>(Labcd/nz;Labcd/qz;)V

    return-object v0
.end method

.method public FH()Labcd/rz;
    .registers 5

    new-instance v0, Labcd/rz;

    iget v1, p0, Labcd/rz;->j6:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Labcd/rz;->DW:Labcd/nz;

    iget-object v3, p0, Labcd/rz;->FH:Labcd/qz;

    invoke-direct {v0, v1, v2, v3}, Labcd/rz;-><init>(ILabcd/nz;Labcd/qz;)V

    return-object v0
.end method

.method public j6()J
    .registers 3

    iget-object v0, p0, Labcd/rz;->DW:Labcd/nz;

    iget v1, p0, Labcd/rz;->j6:I

    invoke-interface {v0, v1}, Labcd/nz;->j6(I)J

    move-result-wide v0

    return-wide v0
.end method
