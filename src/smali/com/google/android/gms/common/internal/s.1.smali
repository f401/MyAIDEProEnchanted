.class public final Lcom/google/android/gms/common/internal/s;
.super Labcd/qx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqx",
        "<",
        "Lcom/google/android/gms/common/internal/p;",
        ">;"
    }
.end annotation


# static fields
.field private static final FH:Lcom/google/android/gms/common/internal/s;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/common/internal/s;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/s;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/s;->FH:Lcom/google/android/gms/common/internal/s;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.common.ui.SignInButtonCreatorImpl"

    invoke-direct {p0, v0}, Labcd/qx;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private final DW(Landroid/content/Context;II)Landroid/view/View;
    .registers 7

    :try_start_0
    new-instance v1, Lcom/google/android/gms/common/internal/SignInButtonConfig;

    const/4 v0, 0x0

    invoke-direct {v1, p2, p3, v0}, Lcom/google/android/gms/common/internal/SignInButtonConfig;-><init>(II[Lcom/google/android/gms/common/api/Scope;)V

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v2

    invoke-virtual {p0, p1}, Labcd/qx;->j6(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/p;

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/common/internal/p;->j6(Labcd/ox;Lcom/google/android/gms/common/internal/SignInButtonConfig;)Labcd/ox;

    move-result-object v0

    invoke-static {v0}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Could not get button with size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and color "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Labcd/qx$a;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Labcd/qx$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static j6(Landroid/content/Context;II)Landroid/view/View;
    .registers 4

    sget-object v0, Lcom/google/android/gms/common/internal/s;->FH:Lcom/google/android/gms/common/internal/s;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/common/internal/s;->DW(Landroid/content/Context;II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final j6(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/p;
    .registers 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.common.internal.ISignInButtonCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/common/internal/p;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/common/internal/p;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/A;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/A;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public final bridge synthetic j6(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/s;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/p;

    move-result-object v0

    return-object v0
.end method
