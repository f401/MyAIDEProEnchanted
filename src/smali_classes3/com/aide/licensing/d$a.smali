.class Lcom/aide/licensing/d$a;
.super Lcom/android/vending/licensing/a$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/licensing/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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


# instance fields
.field final Zo:Lcom/aide/licensing/d;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field private v5:J
    .annotation runtime Labcd/ru;
        field = -0x61afb3ec296a3cdL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/licensing/d$a;

    const-wide v1, -0x140ed51b23477a3L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/licensing/d;J)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x30420f163393120L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/d$a;->FH:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    const-wide v1, 0x3fdc6e923cf9ffa1L  # 0.44424873308889273

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    iput-object p1, p0, Lcom/aide/licensing/d$a;->Zo:Lcom/aide/licensing/d;

    invoke-direct {p0}, Lcom/android/vending/licensing/a$a;-><init>()V

    iput-wide p2, p0, Lcom/aide/licensing/d$a;->v5:J
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/d$a;->Hw:Z

    if-eqz v1, :cond_2f

    const-wide v2, 0x3fdc6e923cf9ffa1L  # 0.44424873308889273

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p2, p3}, Ljava/lang/Long;-><init>(J)V

    move-object v1, v0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v0
.end method

.method static synthetic j6(Lcom/aide/licensing/d$a;)J
    .registers 3

    iget-wide v0, p0, Lcom/aide/licensing/d$a;->v5:J

    return-wide v0
.end method


# virtual methods
.method public j6(ILjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x1136d97042cf88a8L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/licensing/d$a;->FH:Z

    if-eqz v0, :cond_14

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x2755a2bc89d3170L

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    iget-object v0, p0, Lcom/aide/licensing/d$a;->Zo:Lcom/aide/licensing/d;

    invoke-static {v0}, Lcom/aide/licensing/d;->DW(Lcom/aide/licensing/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/aide/licensing/c;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/aide/licensing/c;-><init>(Lcom/aide/licensing/d$a;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_23

    return-void

    :catchall_23
    move-exception v0

    sget-boolean v1, Lcom/aide/licensing/d$a;->Hw:Z

    if-eqz v1, :cond_39

    const-wide v2, -0x2755a2bc89d3170L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    throw v0
.end method
