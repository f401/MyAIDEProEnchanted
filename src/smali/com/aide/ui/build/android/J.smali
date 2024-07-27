.class public Lcom/aide/ui/build/android/J;
.super Ljava/security/Provider;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x42d68df8638d8c4L

    const-class v0, Lcom/aide/ui/build/android/J;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 9

    const-wide v6, 0x2de0e1f9a6500e05L    # 1.0608490090974568E-87

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/J;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2de0e1f9a6500e05L    # 1.0608490090974568E-87

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const-string v0, "jks"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-string v1, ""

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/J;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
