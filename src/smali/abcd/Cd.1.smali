.class synthetic Labcd/Cd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Dd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/Cd;

    const-wide v2, 0x1948d04bcc9607a0L    # 7.128587242903305E-187

    const-wide v4, 0x33242acf94546825L    # 2.4511910125982313E-62

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method
