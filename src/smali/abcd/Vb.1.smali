.class synthetic Labcd/Vb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Wb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/Vb;

    const-wide v2, 0x4b8bf94111855133L    # 8.573898506283362E55

    const-wide v4, -0x2de25fc8717a6b40L    # -3.68340561841285E87

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method
