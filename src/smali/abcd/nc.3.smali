.class public abstract Labcd/nc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/nc$a;,
        Labcd/nc$b;,
        Labcd/nc$c;,
        Labcd/nc$d;
    }
.end annotation


# static fields
.field private static DW:Labcd/nc;
    .annotation runtime Labcd/ru;
        field = 0x327526b46cd5e803L
    .end annotation
.end field

.field private static FH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Ljava/lang/Object;
    .annotation runtime Labcd/ru;
        field = -0xcccbce1ab1bf6f7L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2e990c7464243f98L
    .end annotation

    const-wide v8, 0x1a4dd0ee2947b53bL

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Labcd/nc;

    const-wide v2, -0x30e5c5b023ab0e0L

    const-wide v4, -0x30e5c5b023ab0e0L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/nc;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1a4dd0ee2947b53bL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Labcd/nc;->j6:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/nc;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x4615b4af1d18c654L    # -1.0371234381491639E-29

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/nc;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4615b4af1d18c654L    # -1.0371234381491639E-29

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/nc;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static j6()Labcd/nc;
    .registers 6

    const-wide v4, -0x19ada2a53938b920L    # -7.803337635738939E184

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/nc;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x19ada2a53938b920L    # -7.803337635738939E184

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v1, Labcd/nc;->j6:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Labcd/nc;->DW:Labcd/nc;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/nc;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public abstract DW()Labcd/nc$b;
.end method

.method public abstract DW(Ljava/lang/String;)Labcd/nc$d;
.end method

.method public abstract j6(Ljava/lang/String;)Labcd/nc$d;
.end method
