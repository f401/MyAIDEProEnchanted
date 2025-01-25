.class Labcd/Xd$a;
.super Labcd/tc$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Xd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static FH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Xd$a;

    const-wide v1, 0xe23146c4250bff8L  # 1.43069403148292E-240

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x657f2043d5924c0L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x366d5d4731d65328L  # 1.6073532506295206E-46

    :try_start_6
    sget-boolean v3, Labcd/Xd$a;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Labcd/tc$a;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/Xd$a;->Hw:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method synthetic constructor <init>(Labcd/Wd;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0xabb866364cc4060L

    :try_start_6
    sget-boolean v3, Labcd/Xd$a;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Labcd/Xd$a;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/Xd$a;->Hw:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v3
.end method
