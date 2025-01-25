.class Labcd/Lm$b;
.super Labcd/Lm$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Lm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field DW:Labcd/ms;

.field FH:I

.field Hw:I

.field final v5:Labcd/Lm;


# direct methods
.method constructor <init>(Labcd/Lm;)V
    .registers 2

    iput-object p1, p0, Labcd/Lm$b;->v5:Labcd/Lm;

    invoke-direct {p0}, Labcd/Lm$a;-><init>()V

    return-void
.end method

.method private DW()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Labcd/Lm$b;->FH:I

    return-void
.end method


# virtual methods
.method public j6()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public j6(I)V
    .registers 2

    return-void
.end method

.method public j6(III)V
    .registers 4

    invoke-direct {p0}, Labcd/Lm$b;->DW()V

    return-void
.end method

.method public j6(IIII)V
    .registers 5

    invoke-direct {p0}, Labcd/Lm$b;->DW()V

    return-void
.end method

.method public j6(IIIILabcd/Qs;I)V
    .registers 7

    invoke-direct {p0}, Labcd/Lm$b;->DW()V

    return-void
.end method

.method public j6(IIILabcd/Qs;)V
    .registers 5

    invoke-direct {p0}, Labcd/Lm$b;->DW()V

    return-void
.end method

.method public j6(IIILabcd/cn;I)V
    .registers 6

    invoke-direct {p0}, Labcd/Lm$b;->DW()V

    return-void
.end method

.method public j6(IIILabcd/ms;I)V
    .registers 6

    iput-object p4, p0, Labcd/Lm$b;->DW:Labcd/ms;

    iput p3, p0, Labcd/Lm$b;->FH:I

    iput p5, p0, Labcd/Lm$b;->Hw:I

    return-void
.end method

.method public j6(IILabcd/Ks;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Labcd/Ks;",
            "Ljava/util/ArrayList<",
            "Labcd/ms;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Labcd/Lm$b;->DW()V

    return-void
.end method
