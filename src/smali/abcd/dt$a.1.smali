.class Labcd/dt$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/dt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field DW:Labcd/dt$b;

.field FH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Labcd/dt$a;",
            ">;"
        }
    .end annotation
.end field

.field Hw:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Labcd/dt$a;",
            ">;"
        }
    .end annotation
.end field

.field j6:Ljava/util/BitSet;

.field v5:Z


# direct methods
.method constructor <init>(IILabcd/dt$b;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Labcd/dt$a;->j6:Ljava/util/BitSet;

    iget-object v0, p0, Labcd/dt$a;->j6:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    iput-object p3, p0, Labcd/dt$a;->DW:Labcd/dt$b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/dt$a;->FH:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/dt$a;->Hw:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/dt$a;->v5:Z

    return-void
.end method
