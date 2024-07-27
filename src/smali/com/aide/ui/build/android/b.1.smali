.class Lcom/aide/ui/build/android/b;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/ck$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/android/B;->DW()V
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
.field final FH:Lcom/aide/ui/build/android/B;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/build/android/b;

    const-wide v2, -0x4246ebb8609a7393L    # -2.280941578174458E-11

    const-wide v4, 0x14c20c5ff8bff370L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/android/B;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/build/android/b;->FH:Lcom/aide/ui/build/android/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2801d3d26249ad4fL
    .end annotation

    const-wide v2, -0x55796ca7f1570368L    # -7.874628653308256E-104

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x55796ca7f1570368L    # -7.874628653308256E-104

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/android/b;->FH:Lcom/aide/ui/build/android/B;

    invoke-static {v0}, Lcom/aide/ui/build/android/B;->j6(Lcom/aide/ui/build/android/B;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/build/android/b;->FH:Lcom/aide/ui/build/android/B;

    invoke-static {v0}, Lcom/aide/ui/build/android/B;->DW(Lcom/aide/ui/build/android/B;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/b;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1054698f4d89a14dL
    .end annotation

    const-wide v2, 0x229ed8bda1090a60L    # 6.323972455800905E-142

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x229ed8bda1090a60L    # 6.323972455800905E-142

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/android/b;->FH:Lcom/aide/ui/build/android/B;

    invoke-static {v0}, Lcom/aide/ui/build/android/B;->j6(Lcom/aide/ui/build/android/B;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/build/android/b;->FH:Lcom/aide/ui/build/android/B;

    invoke-static {v0}, Lcom/aide/ui/build/android/B;->DW(Lcom/aide/ui/build/android/B;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/b;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method
