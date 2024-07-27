.class public Labcd/nc$a;
.super Ljava/lang/Exception;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/nc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x11274e19af16ee40L    # 4.918853092656313E-226

    const-class v0, Labcd/nc$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method
