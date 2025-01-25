.class synthetic Labcd/Ha;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Ia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x1bc186d38067aaf0L  # -7.536982239622493E174

    const-wide v2, -0x486167534ec6d1e1L  # -8.78073188752674E-41

    const-class v4, Labcd/Ha;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method
