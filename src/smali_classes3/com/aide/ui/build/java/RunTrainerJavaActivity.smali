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
    .registers 3

    const-class v0, Lcom/aide/ui/build/java/RunTrainerJavaActivity;

    const-wide v1, 0xef3edfe17ab339bL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x54b3c8afb9530d90L  # 1.0818104537491684E100

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/java/RunTrainerJavaActivity;->we:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Lcom/aide/ui/build/java/RunJavaActivity;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/java/RunTrainerJavaActivity;->J0:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static j6(Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;ZI)V
    .registers 15

    sget-boolean v0, Lcom/aide/ui/build/java/RunTrainerJavaActivity;->we:Z

    if-eqz v0, :cond_31

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p4}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-wide v1, 0xfc30c7d2c8ff500L  # 9.5856295387263E-233

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_31
    const-class v3, Lcom/aide/ui/build/java/RunTrainerJavaActivity;

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v2 .. v8}, Lcom/aide/ui/build/java/RunJavaActivity;->j6(Landroid/app/Activity;Ljava/lang/Class;ZLjava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method
