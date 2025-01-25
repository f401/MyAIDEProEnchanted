.class Lcom/aide/ui/build/android/h;
.super Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener$Stub;


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
.field private static FH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field final v5:Lcom/aide/ui/build/android/B;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x4246ebb8609a7393L  # -2.280941578174458E-11

    const-wide v2, 0x14c229b1779a7d69L

    const-class v4, Lcom/aide/ui/build/android/h;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/android/B;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/build/android/h;->v5:Lcom/aide/ui/build/android/B;

    invoke-direct {p0}, Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x70a4bfd2e2ce8741L
    .end annotation

    const-wide v0, -0x340fc7c7e21bc008L  # -6.363257418060718E57

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/h;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/build/android/f;

    invoke-direct {v2, p0}, Lcom/aide/ui/build/android/f;-><init>(Lcom/aide/ui/build/android/h;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/h;->Hw:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public aM(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x625ad8b1c8a5da7L
    .end annotation

    const-wide v0, 0x5f3e4c4bd900dc3L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/h;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/build/android/e;

    invoke-direct {v2, p0, p1}, Lcom/aide/ui/build/android/e;-><init>(Lcom/aide/ui/build/android/h;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/h;->Hw:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public j6(Ljava/lang/String;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x405b053701c9b43fL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/h;->FH:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x9e7ec3ae8f62bcdL  # -7.403936979825674E260

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    new-instance v0, Lcom/aide/ui/build/android/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/aide/ui/build/android/g;-><init>(Lcom/aide/ui/build/android/h;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/h;->Hw:Z

    if-eqz v1, :cond_2f

    const-wide v2, -0x9e7ec3ae8f62bcdL  # -7.403936979825674E260

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v0
.end method

.method public j6(Z)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x4966dfbc8476ef03L
    .end annotation

    const-wide v0, -0xa75685a65749455L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/h;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    new-instance v2, Lcom/aide/ui/build/android/d;

    invoke-direct {v2, p0, p1}, Lcom/aide/ui/build/android/d;-><init>(Lcom/aide/ui/build/android/h;Z)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/h;->Hw:Z

    if-eqz v3, :cond_22

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method
