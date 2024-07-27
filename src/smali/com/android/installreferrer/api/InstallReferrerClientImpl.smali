.class Lcom/android/installreferrer/api/InstallReferrerClientImpl;
.super Lcom/android/installreferrer/api/b;


# instance fields
.field private final DW:Landroid/content/Context;

.field private FH:Labcd/dx;

.field private Hw:Landroid/content/ServiceConnection;

.field private j6:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/installreferrer/api/b;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->j6:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->DW:Landroid/content/Context;

    return-void
.end method

.method private Hw()Z
    .registers 5

    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->DW:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "com.android.vending"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const v2, 0x4d17ab4

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic j6(Lcom/android/installreferrer/api/InstallReferrerClientImpl;I)I
    .registers 2

    iput p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->j6:I

    return p1
.end method

.method static synthetic j6(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Labcd/dx;)Labcd/dx;
    .registers 2

    iput-object p1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->FH:Labcd/dx;

    return-object p1
.end method


# virtual methods
.method public DW()Lcom/android/installreferrer/api/e;
    .registers 4

    invoke-virtual {p0}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->FH()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "package_name"

    iget-object v2, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->DW:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lcom/android/installreferrer/api/e;

    iget-object v2, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->FH:Labcd/dx;

    invoke-interface {v2, v0}, Labcd/dx;->Zo(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/installreferrer/api/e;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "InstallReferrerClient"

    const-string v2, "RemoteException getting install referrer information"

    invoke-static {v1, v2}, Labcd/pu;->DW(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->j6:I

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Service not connected. Please start a connection before using the service."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public FH()Z
    .registers 3

    iget v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->j6:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->FH:Labcd/dx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->Hw:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j6()V
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->j6:I

    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->Hw:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    const-string v0, "InstallReferrerClient"

    const-string v1, "Unbinding from service."

    invoke-static {v0, v1}, Labcd/pu;->j6(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->DW:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->Hw:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v2, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->Hw:Landroid/content/ServiceConnection;

    :cond_0
    iput-object v2, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->FH:Labcd/dx;

    return-void
.end method

.method public j6(Lcom/android/installreferrer/api/d;)V
    .registers 9

    const/4 v6, 0x2

    const/4 v2, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->FH()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "InstallReferrerClient"

    const-string v1, "Service connection is valid. No need to re-initialize."

    invoke-static {v0, v1}, Labcd/pu;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Lcom/android/installreferrer/api/d;->j6(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->j6:I

    if-ne v0, v5, :cond_1

    const-string v0, "InstallReferrerClient"

    const-string v1, "Client is already in the process of connecting to the service."

    invoke-static {v0, v1}, Labcd/pu;->DW(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/android/installreferrer/api/d;->j6(I)V

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    const-string v0, "InstallReferrerClient"

    const-string v1, "Client was already closed and can\'t be reused. Please create another instance."

    invoke-static {v0, v1}, Labcd/pu;->DW(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/android/installreferrer/api/d;->j6(I)V

    goto :goto_0

    :cond_2
    const-string v0, "InstallReferrerClient"

    const-string v1, "Starting install referrer service setup."

    invoke-static {v0, v1}, Labcd/pu;->j6(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/installreferrer/api/InstallReferrerClientImpl$a;-><init>(Lcom/android/installreferrer/api/InstallReferrerClientImpl;Lcom/android/installreferrer/api/d;Lcom/android/installreferrer/api/c;)V

    iput-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->Hw:Landroid/content/ServiceConnection;

    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.vending"

    const-string v3, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->DW:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_5

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v3, "com.android.vending"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->Hw()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->DW:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->Hw:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "InstallReferrerClient"

    const-string v1, "Service was bonded successfully."

    invoke-static {v0, v1}, Labcd/pu;->j6(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "InstallReferrerClient"

    const-string v1, "Connection to service is blocked."

    invoke-static {v0, v1}, Labcd/pu;->DW(Ljava/lang/String;Ljava/lang/String;)V

    iput v4, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->j6:I

    invoke-interface {p1, v5}, Lcom/android/installreferrer/api/d;->j6(I)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "InstallReferrerClient"

    const-string v1, "Play Store missing or incompatible. Version 8.3.73 or later required."

    invoke-static {v0, v1}, Labcd/pu;->DW(Ljava/lang/String;Ljava/lang/String;)V

    iput v4, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->j6:I

    invoke-interface {p1, v6}, Lcom/android/installreferrer/api/d;->j6(I)V

    goto/16 :goto_0

    :cond_5
    iput v4, p0, Lcom/android/installreferrer/api/InstallReferrerClientImpl;->j6:I

    const-string v0, "InstallReferrerClient"

    const-string v1, "Install Referrer service unavailable on device."

    invoke-static {v0, v1}, Labcd/pu;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v6}, Lcom/android/installreferrer/api/d;->j6(I)V

    goto/16 :goto_0
.end method
