.class public Labcd/oC;
.super Labcd/qC;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/oC$a;
    }
.end annotation


# instance fields
.field private FH:Labcd/eC;

.field private Hw:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Labcd/qC;-><init>()V

    sget-object v0, Labcd/sC;->j6:Labcd/eC;

    iput-object v0, p0, Labcd/oC;->FH:Labcd/eC;

    const/16 v0, 0x40

    iput v0, p0, Labcd/oC;->Hw:I

    return-void
.end method

.method static synthetic DW(Labcd/oC;)Labcd/eC;
    .registers 1

    iget-object p0, p0, Labcd/oC;->FH:Labcd/eC;

    return-object p0
.end method

.method static synthetic j6(Labcd/oC;)I
    .registers 1

    iget p0, p0, Labcd/oC;->Hw:I

    return p0
.end method


# virtual methods
.method public j6(Labcd/kC;Labcd/mC;Labcd/lC;Labcd/lC;Labcd/jC;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Labcd/CC;",
            ">(",
            "Labcd/kC;",
            "LmC<",
            "TS;>;",
            "LlC<",
            "TS;>;",
            "LlC<",
            "TS;>;",
            "Labcd/jC;",
            ")V"
        }
    .end annotation

    new-instance v6, Labcd/oC$a;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Labcd/oC$a;-><init>(Labcd/oC;Labcd/kC;Labcd/mC;Labcd/lC;Labcd/lC;)V

    invoke-virtual {v6, p5}, Labcd/oC$a;->j6(Labcd/jC;)V

    return-void
.end method
