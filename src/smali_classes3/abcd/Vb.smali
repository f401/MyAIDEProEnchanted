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
    .registers 5

    const-wide v0, 0x4b8bf94111855133L  # 8.573898506283362E55

    const-wide v2, -0x2de25fc8717a6b40L  # -3.68340561841285E87

    const-class v4, Labcd/Vb;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method
