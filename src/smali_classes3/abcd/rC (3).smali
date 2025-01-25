.class Labcd/rC;
.super Labcd/qC;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/sC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/qC;-><init>()V

    return-void
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

    new-instance v0, Labcd/sC;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Labcd/sC;-><init>(Labcd/kC;Labcd/mC;Labcd/lC;Labcd/lC;Labcd/jC;Labcd/sC;)V

    return-void
.end method
