.class public abstract Labcd/qC;
.super Labcd/eC;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/eC;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(Labcd/DC;Labcd/CC;Labcd/CC;)Labcd/kC;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Labcd/CC;",
            ">(",
            "LDC",
            "<-TS;>;TS;TS;)",
            "Labcd/kC;"
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v0, Labcd/nC;

    invoke-direct {v0, p1, p2, p3}, Labcd/nC;-><init>(Labcd/DC;Labcd/CC;Labcd/CC;)V

    invoke-virtual {v0}, Labcd/nC;->FH()Labcd/mC;

    move-result-object v2

    invoke-virtual {v0}, Labcd/nC;->j6()Labcd/lC;

    move-result-object v3

    invoke-virtual {v0}, Labcd/nC;->DW()Labcd/lC;

    move-result-object v4

    new-instance v1, Labcd/kC;

    invoke-direct {v1}, Labcd/kC;-><init>()V

    new-instance v5, Labcd/jC;

    invoke-virtual {p2}, Labcd/CC;->j6()I

    move-result v0

    invoke-virtual {p3}, Labcd/CC;->j6()I

    move-result v6

    invoke-direct {v5, v7, v0, v7, v6}, Labcd/jC;-><init>(IIII)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Labcd/qC;->j6(Labcd/kC;Labcd/mC;Labcd/lC;Labcd/lC;Labcd/jC;)V

    return-object v1
.end method

.method public abstract j6(Labcd/kC;Labcd/mC;Labcd/lC;Labcd/lC;Labcd/jC;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Labcd/CC;",
            ">(",
            "Labcd/kC;",
            "LmC",
            "<TS;>;",
            "LlC",
            "<TS;>;",
            "LlC",
            "<TS;>;",
            "Labcd/jC;",
            ")V"
        }
    .end annotation
.end method
