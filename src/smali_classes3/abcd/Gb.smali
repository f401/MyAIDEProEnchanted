.class synthetic Labcd/Gb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Hb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x29ffc2e310540b11L  # -1.8621744112569646E106

    const-wide v2, 0x44a660197d7a82d0L  # 5.28323934065668E22

    const-class v4, Labcd/Gb;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method
