.class public interface abstract Labcd/KI;
.super Ljava/lang/Object;


# static fields
.field public static final j6:Labcd/KI;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/JI;

    invoke-direct {v0}, Labcd/JI;-><init>()V

    sput-object v0, Labcd/KI;->j6:Labcd/KI;

    return-void
.end method


# virtual methods
.method public abstract j6(Labcd/IJ;)V
.end method

.method public abstract j6(Labcd/IJ;Ljava/util/Collection;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/IJ;",
            "Ljava/util/Collection<",
            "+",
            "Labcd/yE;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract j6(Labcd/IJ;Ljava/util/Collection;IIZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/IJ;",
            "Ljava/util/Collection<",
            "+",
            "Labcd/yE;",
            ">;IIZ)V"
        }
    .end annotation
.end method

.method public abstract j6(Labcd/IJ;Ljava/util/Collection;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/IJ;",
            "Ljava/util/Collection<",
            "+",
            "Labcd/yE;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Labcd/yE;",
            ">;)V"
        }
    .end annotation
.end method
