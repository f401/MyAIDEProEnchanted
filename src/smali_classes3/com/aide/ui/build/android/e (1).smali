.class Lcom/aide/ui/build/android/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/android/h;->aM(Ljava/lang/String;)V
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
.field final FH:Ljava/lang/String;

.field final Hw:Lcom/aide/ui/build/android/h;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x4246ebb8609a7393L  # -2.280941578174458E-11

    const-wide v2, -0x3a0f28e3e1346683L  # -8.338899204309446E28

    const-class v4, Lcom/aide/ui/build/android/e;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/android/h;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/build/android/e;->Hw:Lcom/aide/ui/build/android/h;

    iput-object p2, p0, Lcom/aide/ui/build/android/e;->FH:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2309a246af5124c5L
    .end annotation

    const-wide v0, 0x2c2b1bfa688851a8L  # 6.345846023873457E-96

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/android/e;->Hw:Lcom/aide/ui/build/android/h;

    iget-object v2, v2, Lcom/aide/ui/build/android/h;->v5:Lcom/aide/ui/build/android/B;

    iget-object v3, p0, Lcom/aide/ui/build/android/e;->FH:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/aide/ui/build/android/B;->j6(Lcom/aide/ui/build/android/B;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/e;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method
