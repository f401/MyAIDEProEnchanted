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
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2e990c7464243f98L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x1a4dd0ee2947b53bL

    :try_start_6
    const-class v3, Labcd/nc;

    const-wide v4, -0x30e5c5b023ab0e0L

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/nc;->FH:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    sput-object v3, Labcd/nc;->j6:Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v3

    sget-boolean v4, Labcd/nc;->Hw:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x4615b4af1d18c654L  # -1.0371234381491639E-29

    :try_start_6
    sget-boolean v3, Labcd/nc;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/nc;->Hw:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static j6()Labcd/nc;
    .registers 5

    const/4 v0, 0x0

    const-wide v1, -0x19ada2a53938b920L  # -7.803337635738939E184

    :try_start_6
    sget-boolean v3, Labcd/nc;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-object v3, Labcd/nc;->j6:Ljava/lang/Object;

    monitor-enter v3
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_17

    :try_start_10
    sget-object v4, Labcd/nc;->DW:Labcd/nc;

    monitor-exit v3

    return-object v4

    :catchall_14
    move-exception v4

    monitor-exit v3
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_14

    :try_start_16
    throw v4
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    :catchall_17
    move-exception v3

    sget-boolean v4, Labcd/nc;->Hw:Z

    if-eqz v4, :cond_1f

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v3
.end method


# virtual methods
.method public abstract DW()Labcd/nc$b;
.end method

.method public abstract DW(Ljava/lang/String;)Labcd/nc$d;
.end method

.method public abstract j6(Ljava/lang/String;)Labcd/nc$d;
.end method
