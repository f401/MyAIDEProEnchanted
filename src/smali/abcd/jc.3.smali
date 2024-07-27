.class public Labcd/jc;
.super Ljava/lang/Exception;


# annotations
.annotation runtime Labcd/xu;
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


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x11ff8f8a25c701c0L    # -7.427969252695214E221

    const-class v0, Labcd/jc;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x472de4354ff25524L    # 7.760261106101686E34

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/jc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x472de4354ff25524L    # 7.760261106101686E34

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/jc;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .registers 5

    const-wide v2, 0x1b08b135b8ad9677L    # 1.90420114838805E-178

    :try_start_0
    sget-boolean v0, Labcd/jc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1b08b135b8ad9677L    # 1.90420114838805E-178

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/jc;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
