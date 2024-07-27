.class synthetic Labcd/Ce;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/De;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/Ce;

    const-wide v2, -0x1443b7e0691e26b7L    # -9.297859620873464E210

    const-wide v4, -0x9aa47d1e70498d0L    # -1.068624523185092E262

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method
