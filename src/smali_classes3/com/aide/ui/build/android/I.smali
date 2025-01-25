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
    .registers 3

    const-class v0, Lcom/aide/ui/build/android/I;

    const-wide v1, 0x633b0559375a959L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x105fd9644f09c57L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/android/I;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    new-instance v3, Lcom/aide/ui/build/android/H;

    invoke-direct {v3}, Lcom/aide/ui/build/android/H;-><init>()V

    new-instance v4, Lcom/aide/ui/build/android/J;

    invoke-direct {v4}, Lcom/aide/ui/build/android/J;-><init>()V

    const-string v5, "jks"

    invoke-direct {p0, v3, v4, v5}, Ljava/security/KeyStore;-><init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/android/I;->DW:Z

    if-eqz v4, :cond_25

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v3
.end method
