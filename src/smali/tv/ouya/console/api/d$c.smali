.class Ltv/ouya/console/api/d$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field public DW:I

.field public FH:Landroid/util/SparseBooleanArray;

.field final Hw:Ltv/ouya/console/api/d;

.field public j6:I


# direct methods
.method constructor <init>(Ltv/ouya/console/api/d;)V
    .registers 3

    const/4 v0, 0x0

    iput-object p1, p0, Ltv/ouya/console/api/d$c;->Hw:Ltv/ouya/console/api/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Ltv/ouya/console/api/d$c;->j6:I

    iput v0, p0, Ltv/ouya/console/api/d$c;->DW:I

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Ltv/ouya/console/api/d$c;->FH:Landroid/util/SparseBooleanArray;

    return-void
.end method
