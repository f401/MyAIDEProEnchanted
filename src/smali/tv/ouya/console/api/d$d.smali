.class Ltv/ouya/console/api/d$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field public DW:F

.field public FH:F

.field public Hw:I

.field public j6:I

.field final v5:Ltv/ouya/console/api/d;


# direct methods
.method constructor <init>(Ltv/ouya/console/api/d;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Ltv/ouya/console/api/d$d;->v5:Ltv/ouya/console/api/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Ltv/ouya/console/api/d$d;->j6:I

    iput v1, p0, Ltv/ouya/console/api/d$d;->DW:F

    iput v1, p0, Ltv/ouya/console/api/d$d;->FH:F

    iput v0, p0, Ltv/ouya/console/api/d$d;->Hw:I

    return-void
.end method
