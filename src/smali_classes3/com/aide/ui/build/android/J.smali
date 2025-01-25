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
    .registers 3

    const-class v0, Lcom/aide/ui/build/android/J;

    const-wide v1, -0x42d68df8638d8c4L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    const/4 v0, 0x0

    const-wide v1, 0x2de0e1f9a6500e05L  # 1.0608490090974568E-87

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/android/J;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    const-string v3, "jks"

    const-string v4, ""

    const-wide/high16 v5, 0x3ff0000000000000L  # 1.0

    invoke-direct {p0, v3, v5, v6, v4}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/android/J;->DW:Z

    if-eqz v4, :cond_1f

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v3
.end method
