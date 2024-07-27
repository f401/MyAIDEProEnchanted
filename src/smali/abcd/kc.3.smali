.class public Labcd/kc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static FH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field public static j6:Z


# direct methods
.method static constructor <clinit>()V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2033e2a322d61940L
    .end annotation

    const-wide v8, -0x2633e143f7f27883L    # -3.717786255904436E124

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Labcd/kc;

    const-wide v2, -0x53170d9a8667ebbL

    const-wide v4, -0x53170d9a8667ebbL

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/kc;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2633e143f7f27883L    # -3.717786255904436E124

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Labcd/kc;->j6:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/kc;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x1ce69ed07ebc38ffL    # -2.3945443548664227E169

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/kc;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1ce69ed07ebc38ffL    # -2.3945443548664227E169

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/kc;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
