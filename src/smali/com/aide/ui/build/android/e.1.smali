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
    .registers 6

    const-class v0, Lcom/aide/ui/build/android/e;

    const-wide v2, -0x4246ebb8609a7393L    # -2.280941578174458E-11

    const-wide v4, -0x3a0f28e3e1346683L    # -8.338899204309446E28

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v2, 0x2c2b1bfa688851a8L    # 6.345846023873457E-96

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/e;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2c2b1bfa688851a8L    # 6.345846023873457E-96

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/android/e;->Hw:Lcom/aide/ui/build/android/h;

    iget-object v0, v0, Lcom/aide/ui/build/android/h;->v5:Lcom/aide/ui/build/android/B;

    iget-object v1, p0, Lcom/aide/ui/build/android/e;->FH:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aide/ui/build/android/B;->j6(Lcom/aide/ui/build/android/B;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/e;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
