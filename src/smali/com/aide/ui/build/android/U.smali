.class Lcom/aide/ui/build/android/U;
.super Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener$Stub;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/android/X;->DW(Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;)Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;
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
.field final Zo:Lcom/aide/ui/build/android/X;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field final v5:Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/build/android/U;

    const-wide v2, 0xd9b2feebc3101dbL

    const-wide v4, -0x2b17582236a7c55cL    # -1.0785651762876623E101

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/android/X;Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/build/android/U;->Zo:Lcom/aide/ui/build/android/X;

    iput-object p2, p0, Lcom/aide/ui/build/android/U;->v5:Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;

    invoke-direct {p0}, Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x5ee1b0e10804717L
    .end annotation

    const-wide v2, -0xa6dd81da1b8d2bL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/U;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xa6dd81da1b8d2bL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/android/U;->v5:Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;

    invoke-interface {v0}, Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;->DW()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/U;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public aM(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2926a96714a788e9L
    .end annotation

    const-wide v2, 0x16ff537d873cf91L    # 9.32035308986165E-302

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/U;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x16ff537d873cf91L    # 9.32035308986165E-302

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/android/U;->v5:Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;

    invoke-interface {v0, p1}, Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;->aM(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aide/ui/build/android/U;->Zo:Lcom/aide/ui/build/android/X;

    invoke-static {v0}, Lcom/aide/ui/build/android/X;->v5(Lcom/aide/ui/build/android/X;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/U;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/String;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x403291d30273557bL
    .end annotation

    const-wide v2, 0xf31fc07eaf6fc55L    # 1.767590531927151E-235

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/U;->FH:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0xf31fc07eaf6fc55L    # 1.767590531927151E-235

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/android/U;->v5:Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;

    invoke-interface {v0, p1, p2}, Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;->j6(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/build/android/U;->Hw:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Z)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x159b0309ef4c5e0fL
    .end annotation

    const-wide v2, -0xef42a712f7ba0a3L    # -3.540018403102993E236

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/U;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xef42a712f7ba0a3L    # -3.540018403102993E236

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/android/U;->v5:Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;

    invoke-interface {v0, p1}, Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;->j6(Z)V

    iget-object v0, p0, Lcom/aide/ui/build/android/U;->Zo:Lcom/aide/ui/build/android/X;

    invoke-static {v0}, Lcom/aide/ui/build/android/X;->v5(Lcom/aide/ui/build/android/X;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/U;->Hw:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
