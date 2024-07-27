.class Labcd/JI;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/KI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/KI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Labcd/IJ;)V
    .registers 2

    return-void
.end method

.method public j6(Labcd/IJ;Ljava/util/Collection;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/IJ;",
            "Ljava/util/Collection",
            "<+",
            "Labcd/yE;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method

.method public j6(Labcd/IJ;Ljava/util/Collection;IIZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/IJ;",
            "Ljava/util/Collection",
            "<+",
            "Labcd/yE;",
            ">;IIZ)V"
        }
    .end annotation

    return-void
.end method

.method public j6(Labcd/IJ;Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/IJ;",
            "Ljava/util/Collection",
            "<+",
            "Labcd/yE;",
            ">;",
            "Ljava/util/Collection",
            "<+",
            "Labcd/yE;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
