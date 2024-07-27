.class public final Labcd/HC;
.super Labcd/DC;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Labcd/CC;",
        ">",
        "LDC",
        "<",
        "LGC",
        "<TS;>;>;"
    }
.end annotation


# instance fields
.field private final j6:Labcd/DC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LDC",
            "<-TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Labcd/DC;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LDC",
            "<-TS;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Labcd/DC;-><init>()V

    iput-object p1, p0, Labcd/HC;->j6:Labcd/DC;

    return-void
.end method


# virtual methods
.method public bridge synthetic j6(Labcd/CC;I)I
    .registers 4

    check-cast p1, Labcd/GC;

    invoke-virtual {p0, p1, p2}, Labcd/HC;->j6(Labcd/GC;I)I

    move-result v0

    return v0
.end method

.method public j6(Labcd/GC;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LGC",
            "<TS;>;I)I"
        }
    .end annotation

    iget-object v0, p0, Labcd/HC;->j6:Labcd/DC;

    iget-object v1, p1, Labcd/GC;->j6:Labcd/CC;

    iget v2, p1, Labcd/GC;->DW:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Labcd/DC;->j6(Labcd/CC;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic j6(Labcd/CC;ILabcd/CC;I)Z
    .registers 6

    check-cast p1, Labcd/GC;

    check-cast p3, Labcd/GC;

    invoke-virtual {p0, p1, p2, p3, p4}, Labcd/HC;->j6(Labcd/GC;ILabcd/GC;I)Z

    move-result v0

    return v0
.end method

.method public j6(Labcd/GC;ILabcd/GC;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LGC",
            "<TS;>;I",
            "LGC",
            "<TS;>;I)Z"
        }
    .end annotation

    iget-object v0, p0, Labcd/HC;->j6:Labcd/DC;

    iget-object v1, p1, Labcd/GC;->j6:Labcd/CC;

    iget v2, p1, Labcd/GC;->DW:I

    add-int/2addr v2, p2

    iget-object v3, p3, Labcd/GC;->j6:Labcd/CC;

    iget v4, p3, Labcd/GC;->DW:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Labcd/DC;->j6(Labcd/CC;ILabcd/CC;I)Z

    move-result v0

    return v0
.end method
