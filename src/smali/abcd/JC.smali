.class Labcd/JC;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/KC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Labcd/QC;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Labcd/QC;

    check-cast p2, Labcd/QC;

    invoke-virtual {p0, p1, p2}, Labcd/JC;->j6(Labcd/QC;Labcd/QC;)I

    move-result v0

    return v0
.end method

.method public j6(Labcd/QC;Labcd/QC;)I
    .registers 5

    invoke-static {p1, p2}, Labcd/KC;->j6(Labcd/QC;Labcd/QC;)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Labcd/QC;->VH()I

    move-result v0

    invoke-virtual {p2}, Labcd/QC;->VH()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method
