.class synthetic Labcd/Nb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Ob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/Nb;

    const-wide v2, 0x44ef31141fe3cf2cL    # 1.178389612453238E24

    const-wide v4, 0x32eb2c9f73ecb32fL    # 2.0642838648031773E-63

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method
