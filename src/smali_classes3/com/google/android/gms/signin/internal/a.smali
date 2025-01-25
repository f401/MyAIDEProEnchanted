.class public Lcom/google/android/gms/signin/internal/a;
.super Lcom/google/android/gms/common/internal/g;

# interfaces
.implements Labcd/Rx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/g<",
        "Lcom/google/android/gms/signin/internal/f;",
        ">;",
        "Labcd/Rx;"
    }
.end annotation


# instance fields
.field private final Hw:Z

.field private VH:Ljava/lang/Integer;

.field private final Zo:Landroid/os/Bundle;

.field private final v5:Lcom/google/android/gms/common/internal/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/d;Labcd/Nx;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/g;)V
    .registers 16

    const/4 v3, 0x1

    invoke-static {p4}, Lcom/google/android/gms/signin/internal/a;->j6(Lcom/google/android/gms/common/internal/d;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/signin/internal/a;-><init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/d;Landroid/os/Bundle;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/g;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/d;Landroid/os/Bundle;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/g;)V
    .registers 15

    const/16 v3, 0x2c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/g;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/g;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/signin/internal/a;->Hw:Z

    iput-object p4, p0, Lcom/google/android/gms/signin/internal/a;->v5:Lcom/google/android/gms/common/internal/d;

    iput-object p5, p0, Lcom/google/android/gms/signin/internal/a;->Zo:Landroid/os/Bundle;

    invoke-virtual {p4}, Lcom/google/android/gms/common/internal/d;->Hw()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/signin/internal/a;->VH:Ljava/lang/Integer;

    return-void
.end method

.method public static j6(Lcom/google/android/gms/common/internal/d;)Landroid/os/Bundle;
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->gn()Labcd/Nx;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->Hw()Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "com.google.android.gms.signin.internal.clientRequestedAccount"

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->j6()Landroid/accounts/Account;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v1, :cond_21

    const-string p0, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, p0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_21
    if-eqz v0, :cond_85

    const-string p0, "com.google.android.gms.signin.internal.offlineAccessRequested"

    invoke-virtual {v0}, Labcd/Nx;->VH()Z

    move-result v1

    invoke-virtual {v2, p0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "com.google.android.gms.signin.internal.idTokenRequested"

    invoke-virtual {v0}, Labcd/Nx;->Zo()Z

    move-result v1

    invoke-virtual {v2, p0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "com.google.android.gms.signin.internal.serverClientId"

    invoke-virtual {v0}, Labcd/Nx;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    const/4 v1, 0x1

    invoke-virtual {v2, p0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    invoke-virtual {v0}, Labcd/Nx;->v5()Z

    move-result v1

    invoke-virtual {v2, p0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "com.google.android.gms.signin.internal.hostedDomain"

    invoke-virtual {v0}, Labcd/Nx;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"

    invoke-virtual {v0}, Labcd/Nx;->gn()Z

    move-result v1

    invoke-virtual {v2, p0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Labcd/Nx;->j6()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_72

    invoke-virtual {v0}, Labcd/Nx;->j6()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string p0, "com.google.android.gms.signin.internal.authApiSignInModuleVersion"

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_72
    invoke-virtual {v0}, Labcd/Nx;->FH()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_85

    invoke-virtual {v0}, Labcd/Nx;->FH()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string p0, "com.google.android.gms.signin.internal.realClientLibraryVersion"

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_85
    return-object v2
.end method


# virtual methods
.method public final connect()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/common/internal/c$d;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/c$d;-><init>(Lcom/google/android/gms/common/internal/c;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/c;->connect(Lcom/google/android/gms/common/internal/c$c;)V

    return-void
.end method

.method protected synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/signin/internal/f;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/signin/internal/f;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/signin/internal/g;

    invoke-direct {v0, p1}, Lcom/google/android/gms/signin/internal/g;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method protected getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/a;->v5:Lcom/google/android/gms/common/internal/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/d;->Zo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/a;->Zo:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/gms/signin/internal/a;->v5:Lcom/google/android/gms/common/internal/d;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/d;->Zo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.gms.signin.internal.realClientPackageName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/signin/internal/a;->Zo:Landroid/os/Bundle;

    return-object v0
.end method

.method public getMinApkVersion()I
    .registers 2

    const v0, 0xbdfcb8

    return v0
.end method

.method protected getServiceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    return-object v0
.end method

.method protected getStartServiceAction()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.signin.service.START"

    return-object v0
.end method

.method public final j6(Lcom/google/android/gms/signin/internal/d;)V
    .registers 6

    const-string v0, "Expecting a valid ISignInCallbacks"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/signin/internal/a;->v5:Lcom/google/android/gms/common/internal/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/d;->DW()Landroid/accounts/Account;

    move-result-object v0

    const-string v1, "<<default account>>"

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/api/signin/internal/b;->j6(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/internal/b;->j6()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    new-instance v2, Lcom/google/android/gms/common/internal/ResolveAccountRequest;

    iget-object v3, p0, Lcom/google/android/gms/signin/internal/a;->VH:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v0, v3, v1}, Lcom/google/android/gms/common/internal/ResolveAccountRequest;-><init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/internal/f;

    new-instance v1, Lcom/google/android/gms/signin/internal/zah;

    invoke-direct {v1, v2}, Lcom/google/android/gms/signin/internal/zah;-><init>(Lcom/google/android/gms/common/internal/ResolveAccountRequest;)V

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/signin/internal/f;->j6(Lcom/google/android/gms/signin/internal/zah;Lcom/google/android/gms/signin/internal/d;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_3c} :catch_3d

    return-void

    :catch_3d
    move-exception v0

    const-string v1, "Remote service probably died when signIn is called"

    const-string v2, "SignInClientImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_45
    new-instance v1, Lcom/google/android/gms/signin/internal/zaj;

    const/16 v3, 0x8

    invoke-direct {v1, v3}, Lcom/google/android/gms/signin/internal/zaj;-><init>(I)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/signin/internal/d;->j6(Lcom/google/android/gms/signin/internal/zaj;)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4f} :catch_50

    return-void

    :catch_50
    move-exception p1

    const-string p1, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    invoke-static {v2, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public requiresSignIn()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/signin/internal/a;->Hw:Z

    return v0
.end method
