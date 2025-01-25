.class public final Lcom/google/android/gms/common/internal/s;
.super Labcd/qx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqx<",
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
    .registers 6

    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/internal/SignInButtonConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lcom/google/android/gms/common/internal/SignInButtonConfig;-><init>(II[Lcom/google/android/gms/common/api/Scope;)V

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v1

    invoke-virtual {p0, p1}, Labcd/qx;->j6(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/p;

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/common/internal/p;->j6(Labcd/ox;Lcom/google/android/gms/common/internal/SignInButtonConfig;)Labcd/ox;

    move-result-object p1

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object p1

    :catch_1b
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Could not get button with size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " and color "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p2, Labcd/qx$a;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Labcd/qx$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static j6(Landroid/content/Context;II)Landroid/view/View;
    .registers 4

    sget-object v0, Lcom/google/android/gms/common/internal/s;->FH:Lcom/google/android/gms/common/internal/s;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/common/internal/s;->DW(Landroid/content/Context;II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final j6(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/p;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    const-string v0, "com.google.android.gms.common.internal.ISignInButtonCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/common/internal/p;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/common/internal/p;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/common/internal/A;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/A;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final bridge synthetic j6(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/s;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/p;

    move-result-object p1

    return-object p1
.end method
