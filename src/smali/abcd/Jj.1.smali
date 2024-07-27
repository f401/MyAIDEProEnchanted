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
    .registers 6

    const-class v0, Labcd/Jj;

    const-wide v2, -0x2ba62d79bcd60840L    # -2.2062491487807834E98

    const-wide v4, -0x1b43ec62f672adfL    # -2.323398023282422E300

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v2, -0x2e0e7cd370828147L    # -5.443326745944954E86

    :try_start_0
    sget-boolean v0, Labcd/Jj;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2e0e7cd370828147L    # -5.443326745944954E86

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Jj;->FH:Labcd/Kj$a;

    iget-object v0, v0, Labcd/Kj$a;->tp:Labcd/Kj;

    invoke-static {v0}, Labcd/Kj;->j6(Labcd/Kj;)V

    iget-object v0, p0, Labcd/Jj;->FH:Labcd/Kj$a;

    invoke-static {v0}, Labcd/Kj$a;->j6(Labcd/Kj$a;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Jj;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
