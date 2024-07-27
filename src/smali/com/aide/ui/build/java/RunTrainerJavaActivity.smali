.class public Lcom/aide/ui/build/java/RunTrainerJavaActivity;
.super Lcom/aide/ui/build/java/RunJavaActivity;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static J0:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static we:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0xef3edfe17ab339bL

    const-class v0, Lcom/aide/ui/build/java/RunTrainerJavaActivity;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x54b3c8afb9530d90L    # 1.0818104537491684E100

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/java/RunTrainerJavaActivity;->we:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x54b3c8afb9530d90L    # 1.0818104537491684E100

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/build/java/RunJavaActivity;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/java/RunTrainerJavaActivity;->J0:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static j6(Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;ZI)V
    .registers 13

    sget-boolean v0, Lcom/aide/ui/build/java/RunTrainerJavaActivity;->we:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xfc30c7d2c8ff500L    # 9.5856295387263E-233

    const/4 v2, 0x0

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    const-class v1, Lcom/aide/ui/build/java/RunTrainerJavaActivity;

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/aide/ui/build/java/RunJavaActivity;->j6(Landroid/app/Activity;Ljava/lang/Class;ZLjava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method
