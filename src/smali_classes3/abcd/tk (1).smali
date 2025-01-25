.class Labcd/tk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/yk;->j6(Ljava/lang/String;Ljava/lang/String;Z)Labcd/cm$c;
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
.field final FH:Labcd/yk;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x6e165979867cddf9L

    const-wide v2, 0x59b82001dccc56cL

    const-class v4, Labcd/tk;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/yk;)V
    .registers 2

    iput-object p1, p0, Labcd/tk;->FH:Labcd/yk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x7f85654fafce16cL
    .end annotation

    const-wide v0, -0x2684d2742f54a910L  # -1.1228826690517489E123

    :try_start_5
    sget-boolean v2, Labcd/tk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v4

    const-wide/32 v5, 0x5265c00

    add-long/2addr v2, v5

    invoke-virtual {v4, v2, v3}, Labcd/Ek;->FH(J)V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v2

    sget-boolean v3, Labcd/tk;->DW:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v2
.end method
