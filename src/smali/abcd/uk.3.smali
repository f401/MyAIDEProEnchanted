.class Labcd/uk;
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
    .registers 6

    const-class v0, Labcd/uk;

    const-wide v2, -0x6e165979867cddf9L

    const-wide v4, 0x59bb629815f0857L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/yk;)V
    .registers 2

    iput-object p1, p0, Labcd/uk;->FH:Labcd/yk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x1de8112e9c46e969L
    .end annotation

    const-wide v6, -0x267c9553458e7969L    # -1.6044405236843923E123

    :try_start_0
    sget-boolean v0, Labcd/uk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x267c9553458e7969L    # -1.6044405236843923E123

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Labcd/Ek;->Hw(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/uk;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
