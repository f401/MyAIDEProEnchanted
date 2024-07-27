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
    .registers 4

    const-wide v2, 0xe23146c4250bff8L    # 1.43069403148292E-240

    const-class v0, Labcd/Xd$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x657f2043d5924c0L
    .end annotation

    const-wide v4, 0x366d5d4731d65328L    # 1.6073532506295206E-46

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Xd$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x366d5d4731d65328L    # 1.6073532506295206E-46

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Labcd/tc$a;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Xd$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Labcd/Wd;)V
    .registers 8

    const-wide v4, 0xabb866364cc4060L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Xd$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xabb866364cc4060L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Labcd/Xd$a;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Xd$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
