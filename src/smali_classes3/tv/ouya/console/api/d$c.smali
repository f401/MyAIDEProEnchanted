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
    .registers 2

    iput-object p1, p0, Ltv/ouya/console/api/d$c;->Hw:Ltv/ouya/console/api/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Ltv/ouya/console/api/d$c;->j6:I

    iput p1, p0, Ltv/ouya/console/api/d$c;->DW:I

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Ltv/ouya/console/api/d$c;->FH:Landroid/util/SparseBooleanArray;

    return-void
.end method
