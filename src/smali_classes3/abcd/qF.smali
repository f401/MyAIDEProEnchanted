.class public Labcd/qF;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/qF$a;
    }
.end annotation


# instance fields
.field private final DW:I

.field private final FH:I

.field private final Hw:Labcd/qF$a;

.field private final j6:I


# direct methods
.method protected constructor <init>(IIILabcd/qF$a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Labcd/qF;->j6:I

    iput p2, p0, Labcd/qF;->DW:I

    iput p3, p0, Labcd/qF;->FH:I

    iput-object p4, p0, Labcd/qF;->Hw:Labcd/qF$a;

    return-void
.end method


# virtual methods
.method public DW()Labcd/qF$a;
    .registers 2

    iget-object v0, p0, Labcd/qF;->Hw:Labcd/qF$a;

    return-object v0
.end method

.method public FH()I
    .registers 2

    iget v0, p0, Labcd/qF;->FH:I

    return v0
.end method

.method public Hw()I
    .registers 2

    iget v0, p0, Labcd/qF;->j6:I

    return v0
.end method

.method public j6()I
    .registers 2

    iget v0, p0, Labcd/qF;->DW:I

    return v0
.end method
