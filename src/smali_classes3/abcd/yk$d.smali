.class public Labcd/yk$d;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/yk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
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


# instance fields
.field public final FH:Labcd/yk$e;

.field public final Hw:Labcd/cm$c;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/yk$d;

    const-wide v1, -0x4d800d48c3447d20L  # -1.896033927530735E-65

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Labcd/yk$e;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x19552dde9d021e7L
    .end annotation

    const-wide v0, -0x392e3d16153a1a34L  # -1.4409744824812842E33

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/yk$d;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/yk$d;->FH:Labcd/yk$e;

    iput-object v2, p0, Labcd/yk$d;->Hw:Labcd/cm$c;
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v3

    sget-boolean v4, Labcd/yk$d;->DW:Z

    if-eqz v4, :cond_1d

    invoke-static {v3, v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v3
.end method

.method private constructor <init>(Labcd/yk$e;Labcd/cm$c;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xe03a6515a3f0bL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/yk$d;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0xc4c79c25b620280L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/yk$d;->FH:Labcd/yk$e;

    iput-object p2, p0, Labcd/yk$d;->Hw:Labcd/cm$c;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Labcd/yk$d;->DW:Z

    if-eqz v1, :cond_26

    const-wide v2, 0xc4c79c25b620280L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method

.method synthetic constructor <init>(Labcd/yk$e;Labcd/cm$c;Labcd/ok;)V
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/yk$d;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0xe3af42d262b5348L

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-direct {p0, p1, p2}, Labcd/yk$d;-><init>(Labcd/yk$e;Labcd/cm$c;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v0

    sget-boolean v1, Labcd/yk$d;->DW:Z

    if-eqz v1, :cond_26

    const-wide v2, 0xe3af42d262b5348L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method

.method synthetic constructor <init>(Labcd/yk$e;Labcd/ok;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/yk$d;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x3da06c716b4ff50L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Labcd/yk$d;-><init>(Labcd/yk$e;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Labcd/yk$d;->DW:Z

    if-eqz v1, :cond_22

    const-wide v2, -0x3da06c716b4ff50L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method
