.class Labcd/Jj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Kj$a;->j6()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final FH:Labcd/Kj$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x2ba62d79bcd60840L  # -2.2062491487807834E98

    const-wide v2, -0x1b43ec62f672adfL  # -2.323398023282422E300

    const-class v4, Labcd/Jj;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Kj$a;)V
    .registers 2

    iput-object p1, p0, Labcd/Jj;->FH:Labcd/Kj$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x584cd9bbb604830L
    .end annotation

    const-wide v0, -0x2e0e7cd370828147L  # -5.443326745944954E86

    :try_start_5
    sget-boolean v2, Labcd/Jj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Jj;->FH:Labcd/Kj$a;

    iget-object v2, v2, Labcd/Kj$a;->tp:Labcd/Kj;

    invoke-static {v2}, Labcd/Kj;->j6(Labcd/Kj;)V

    iget-object v2, p0, Labcd/Jj;->FH:Labcd/Kj$a;

    invoke-static {v2}, Labcd/Kj$a;->j6(Labcd/Kj$a;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Labcd/Jj;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method
