.class public Lcom/aide/ui/build/android/I;
.super Ljava/security/KeyStore;


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

    const-wide v2, 0x633b0559375a959L

    const-class v0, Lcom/aide/ui/build/android/I;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x105fd9644f09c57L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/I;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x105fd9644f09c57L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/build/android/H;

    invoke-direct {v0}, Lcom/aide/ui/build/android/H;-><init>()V

    new-instance v1, Lcom/aide/ui/build/android/J;

    invoke-direct {v1}, Lcom/aide/ui/build/android/J;-><init>()V

    const-string v2, "jks"

    invoke-direct {p0, v0, v1, v2}, Ljava/security/KeyStore;-><init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/I;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
