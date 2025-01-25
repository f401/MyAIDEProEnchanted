.class public Labcd/aw;
.super Ljava/lang/Object;


# instance fields
.field public DW:Ljava/lang/Long;

.field public FH:Ljava/lang/Double;

.field public Hw:Ljava/lang/Boolean;

.field public j6:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static j6(D)Labcd/aw;
    .registers 3

    new-instance v0, Labcd/aw;

    invoke-direct {v0}, Labcd/aw;-><init>()V

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, v0, Labcd/aw;->FH:Ljava/lang/Double;

    return-object v0
.end method

.method public static j6(J)Labcd/aw;
    .registers 3

    new-instance v0, Labcd/aw;

    invoke-direct {v0}, Labcd/aw;-><init>()V

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, v0, Labcd/aw;->DW:Ljava/lang/Long;

    return-object v0
.end method

.method public static j6(Ljava/lang/String;)Labcd/aw;
    .registers 2

    new-instance v0, Labcd/aw;

    invoke-direct {v0}, Labcd/aw;-><init>()V

    iput-object p0, v0, Labcd/aw;->j6:Ljava/lang/String;

    return-object v0
.end method

.method public static j6(Z)Labcd/aw;
    .registers 2

    new-instance v0, Labcd/aw;

    invoke-direct {v0}, Labcd/aw;-><init>()V

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, v0, Labcd/aw;->Hw:Ljava/lang/Boolean;

    return-object v0
.end method
