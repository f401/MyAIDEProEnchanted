.class public final Labcd/mC;
.super Labcd/DC;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Labcd/CC;",
        ">",
        "LDC<",
        "LlC<",
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
.method constructor <init>(Labcd/DC;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LDC<",
            "-TS;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Labcd/DC;-><init>()V

    iput-object p1, p0, Labcd/mC;->j6:Labcd/DC;

    return-void
.end method


# virtual methods
.method public bridge synthetic j6(Labcd/CC;I)I
    .registers 3

    check-cast p1, Labcd/lC;

    invoke-virtual {p0, p1, p2}, Labcd/mC;->j6(Labcd/lC;I)I

    move-result p1

    return p1
.end method

.method public j6(Labcd/lC;I)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LlC<",
            "TS;>;I)I"
        }
    .end annotation

    iget-object p1, p1, Labcd/lC;->DW:[I

    aget p1, p1, p2

    return p1
.end method

.method public bridge synthetic j6(Labcd/CC;ILabcd/CC;I)Z
    .registers 5

    check-cast p1, Labcd/lC;

    check-cast p3, Labcd/lC;

    invoke-virtual {p0, p1, p2, p3, p4}, Labcd/mC;->j6(Labcd/lC;ILabcd/lC;I)Z

    move-result p1

    return p1
.end method

.method public j6(Labcd/lC;ILabcd/lC;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LlC<",
            "TS;>;I",
            "LlC<",
            "TS;>;I)Z"
        }
    .end annotation

    iget-object v0, p1, Labcd/lC;->DW:[I

    aget v0, v0, p2

    iget-object v1, p3, Labcd/lC;->DW:[I

    aget v1, v1, p4

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Labcd/mC;->j6:Labcd/DC;

    iget-object p1, p1, Labcd/lC;->j6:Labcd/CC;

    iget-object p3, p3, Labcd/lC;->j6:Labcd/CC;

    invoke-virtual {v0, p1, p2, p3, p4}, Labcd/DC;->j6(Labcd/CC;ILabcd/CC;I)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method
