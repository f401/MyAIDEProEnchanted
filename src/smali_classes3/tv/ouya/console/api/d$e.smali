.class Ltv/ouya/console/api/d$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field public DW:Landroid/util/SparseBooleanArray;

.field public FH:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ltv/ouya/console/api/d$b;",
            ">;"
        }
    .end annotation
.end field

.field public Hw:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ltv/ouya/console/api/d$c;",
            ">;"
        }
    .end annotation
.end field

.field final Zo:Ltv/ouya/console/api/d;

.field public j6:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ltv/ouya/console/api/d$a;",
            ">;"
        }
    .end annotation
.end field

.field public v5:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ltv/ouya/console/api/d$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ltv/ouya/console/api/d;)V
    .registers 2

    iput-object p1, p0, Ltv/ouya/console/api/d$e;->Zo:Ltv/ouya/console/api/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Ltv/ouya/console/api/d$e;->j6:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Ltv/ouya/console/api/d$e;->DW:Landroid/util/SparseBooleanArray;

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Ltv/ouya/console/api/d$e;->FH:Ljava/util/Vector;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Ltv/ouya/console/api/d$e;->Hw:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Ltv/ouya/console/api/d$e;->v5:Ljava/util/Vector;

    return-void
.end method
