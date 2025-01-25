.class synthetic Labcd/Lb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Mb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x32c88698d5ce8b5bL  # 4.657722131240885E-64

    const-wide v2, -0x1e90583787ee5160L  # -2.2252332456106122E161

    const-class v4, Labcd/Lb;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method
