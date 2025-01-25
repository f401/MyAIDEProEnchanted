.class Labcd/FI;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/GI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/GI;
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
.method public j6(Labcd/SI;Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/SI;",
            "Ljava/util/Collection<",
            "Labcd/OI;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
