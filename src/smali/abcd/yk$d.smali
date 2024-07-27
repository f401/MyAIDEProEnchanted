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
    .registers 4

    const-wide v2, -0x4d800d48c3447d20L    # -1.896033927530735E-65

    const-class v0, Labcd/yk$d;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Labcd/yk$e;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x19552dde9d021e7L
    .end annotation

    const-wide v4, -0x392e3d16153a1a34L    # -1.4409744824812842E33

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/yk$d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x392e3d16153a1a34L    # -1.4409744824812842E33

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/yk$d;->FH:Labcd/yk$e;

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/yk$d;->Hw:Labcd/cm$c;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/yk$d;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private constructor <init>(Labcd/yk$e;Labcd/cm$c;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xe03a6515a3f0bL
    .end annotation

    const-wide v2, 0xc4c79c25b620280L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/yk$d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xc4c79c25b620280L

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/yk$d;->FH:Labcd/yk$e;

    iput-object p2, p0, Labcd/yk$d;->Hw:Labcd/cm$c;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/yk$d;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method synthetic constructor <init>(Labcd/yk$e;Labcd/cm$c;Labcd/ok;)V
    .registers 14

    const-wide v8, 0xe3af42d262b5348L

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Labcd/yk$d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xe3af42d262b5348L

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Labcd/yk$d;-><init>(Labcd/yk$e;Labcd/cm$c;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/yk$d;->DW:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method synthetic constructor <init>(Labcd/yk$e;Labcd/ok;)V
    .registers 10

    const-wide v2, -0x3da06c716b4ff50L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/yk$d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3da06c716b4ff50L

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Labcd/yk$d;-><init>(Labcd/yk$e;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/yk$d;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method
