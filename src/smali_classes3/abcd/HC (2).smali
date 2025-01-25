.class public final Labcd/HC;
.super Labcd/DC;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Labcd/CC;",
        ">",
        "LDC<",
        "LGC<",
        "TS;>;>;"
    }
.end annotation


# instance fields
.field private final j6:Labcd/DC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LDC<",
            "-TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Labcd/DC;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LDC<",
            "-TS;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Labcd/DC;-><init>()V

    iput-object p1, p0, Labcd/HC;->j6:Labcd/DC;

    return-void
.end method


# virtual methods
.method public bridge synthetic j6(Labcd/CC;I)I
    .registers 3

    check-cast p1, Labcd/GC;

    invoke-virtual {p0, p1, p2}, Labcd/HC;->j6(Labcd/GC;I)I

    move-result p1

    return p1
.end method

.method public j6(Labcd/GC;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LGC<",
            "TS;>;I)I"
        }
    .end annotation

    iget-object v0, p0, Labcd/HC;->j6:Labcd/DC;

    iget-object v1, p1, Labcd/GC;->j6:Labcd/CC;

    iget p1, p1, Labcd/GC;->DW:I

    add-int/2addr p2, p1

    invoke-virtual {v0, v1, p2}, Labcd/DC;->j6(Labcd/CC;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic j6(Labcd/CC;ILabcd/CC;I)Z
    .registers 5

    check-cast p1, Labcd/GC;

    check-cast p3, Labcd/GC;

    invoke-virtual {p0, p1, p2, p3, p4}, Labcd/HC;->j6(Labcd/GC;ILabcd/GC;I)Z

    move-result p1

    return p1
.end method

.method public j6(Labcd/GC;ILabcd/GC;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LGC<",
            "TS;>;I",
            "LGC<",
            "TS;>;I)Z"
        }
    .end annotation

    iget-object v0, p0, Labcd/HC;->j6:Labcd/DC;

    iget-object v1, p1, Labcd/GC;->j6:Labcd/CC;

    iget p1, p1, Labcd/GC;->DW:I

    add-int/2addr p2, p1

    iget-object p1, p3, Labcd/GC;->j6:Labcd/CC;

    iget p3, p3, Labcd/GC;->DW:I

    add-int/2addr p4, p3

    invoke-virtual {v0, v1, p2, p1, p4}, Labcd/DC;->j6(Labcd/CC;ILabcd/CC;I)Z

    move-result p1

    return p1
.end method
