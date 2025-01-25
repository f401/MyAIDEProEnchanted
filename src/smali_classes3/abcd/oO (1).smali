.class public Labcd/oO;
.super Ljava/lang/Object;


# instance fields
.field private DW:Labcd/qO;

.field private j6:Labcd/qO;


# direct methods
.method public constructor <init>(Labcd/qO;Labcd/qO;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/oO;->j6:Labcd/qO;

    iput-object p2, p0, Labcd/oO;->DW:Labcd/qO;

    return-void
.end method


# virtual methods
.method public DW()Labcd/qO;
    .registers 2

    iget-object v0, p0, Labcd/oO;->j6:Labcd/qO;

    return-object v0
.end method

.method public j6()Labcd/qO;
    .registers 2

    iget-object v0, p0, Labcd/oO;->DW:Labcd/qO;

    return-object v0
.end method
