.class public final Labcd/GC;
.super Labcd/CC;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Labcd/CC;",
        ">",
        "Labcd/CC;"
    }
.end annotation


# instance fields
.field final DW:I

.field private final FH:I

.field final j6:Labcd/CC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Labcd/CC;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;II)V"
        }
    .end annotation

    invoke-direct {p0}, Labcd/CC;-><init>()V

    iput-object p1, p0, Labcd/GC;->j6:Labcd/CC;

    iput p2, p0, Labcd/GC;->DW:I

    sub-int/2addr p3, p2

    iput p3, p0, Labcd/GC;->FH:I

    return-void
.end method

.method public static DW(Labcd/CC;Labcd/jC;)Labcd/GC;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Labcd/CC;",
            ">(TS;",
            "Labcd/jC;",
            ")",
            "LGC<",
            "TS;>;"
        }
    .end annotation

    new-instance v0, Labcd/GC;

    iget v1, p1, Labcd/jC;->FH:I

    iget p1, p1, Labcd/jC;->Hw:I

    invoke-direct {v0, p0, v1, p1}, Labcd/GC;-><init>(Labcd/CC;II)V

    return-object v0
.end method

.method public static j6(Labcd/CC;Labcd/jC;)Labcd/GC;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Labcd/CC;",
            ">(TS;",
            "Labcd/jC;",
            ")",
            "LGC<",
            "TS;>;"
        }
    .end annotation

    new-instance v0, Labcd/GC;

    iget v1, p1, Labcd/jC;->j6:I

    iget p1, p1, Labcd/jC;->DW:I

    invoke-direct {v0, p0, v1, p1}, Labcd/GC;-><init>(Labcd/CC;II)V

    return-object v0
.end method

.method public static j6(Labcd/kC;Labcd/GC;Labcd/GC;)Labcd/kC;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Labcd/CC;",
            ">(",
            "Labcd/kC;",
            "LGC<",
            "TS;>;",
            "LGC<",
            "TS;>;)",
            "Labcd/kC;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_b

    return-object p0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/jC;

    invoke-static {v1, p1, p2}, Labcd/GC;->j6(Labcd/jC;Labcd/GC;Labcd/GC;)V

    goto :goto_4
.end method

.method public static j6(Labcd/jC;Labcd/GC;Labcd/GC;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Labcd/CC;",
            ">(",
            "Labcd/jC;",
            "LGC<",
            "TS;>;",
            "LGC<",
            "TS;>;)V"
        }
    .end annotation

    iget v0, p0, Labcd/jC;->j6:I

    iget p1, p1, Labcd/GC;->DW:I

    add-int/2addr v0, p1

    iput v0, p0, Labcd/jC;->j6:I

    iget v0, p0, Labcd/jC;->DW:I

    add-int/2addr v0, p1

    iput v0, p0, Labcd/jC;->DW:I

    iget p1, p0, Labcd/jC;->FH:I

    iget p2, p2, Labcd/GC;->DW:I

    add-int/2addr p1, p2

    iput p1, p0, Labcd/jC;->FH:I

    iget p1, p0, Labcd/jC;->Hw:I

    add-int/2addr p1, p2

    iput p1, p0, Labcd/jC;->Hw:I

    return-void
.end method


# virtual methods
.method public j6()I
    .registers 2

    iget v0, p0, Labcd/GC;->FH:I

    return v0
.end method
